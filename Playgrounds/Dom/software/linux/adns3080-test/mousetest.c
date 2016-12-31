/*
 * SPI testing utility (using spidev driver)
 *
 * Copyright (c) 2007  MontaVista Software, Inc.
 * Copyright (c) 2007  Anton Vorontsov <avorontsov@ru.mvista.com>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License.
 *
 * Compile on Raspberry Pi with gcc spidev_test.c -o spidev_test
 */

#include <stdint.h>
#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <getopt.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/types.h>
#include <linux/spi/spidev.h>
#include <alloca.h>

#define ARRAY_SIZE(a) (sizeof(a) / sizeof((a)[0]))


static void pabort(const char *s)
{
    perror(s);
    abort();
}

static const char *device = "/dev/spidev32766.0";
static uint8_t mode;
static uint8_t bits = 8;
static uint32_t speed = 500000;
static uint16_t delay = 1000;

static int spi_regwriten(int fd, uint8_t addr, uint8_t* tx, uint8_t length)
{
    int ret;
    uint8_t * txbuf = (uint8_t*)alloca(length+1);
    uint8_t * rxbuf = (uint8_t*)alloca(length+1);

    txbuf[0] = addr;
    for(int i = 0; i < length; ++i)
    {
        txbuf[i+1] = tx[i];
    }
    
    //printf("Writing message of length %i, buf %u", length, txbuf);
    struct spi_ioc_transfer tran = {
        .tx_buf = (unsigned long)txbuf,
        .rx_buf = rxbuf,
        .len = ARRAY_SIZE(txbuf),
        .delay_usecs = delay,
        .speed_hz = speed,
        .bits_per_word = bits,
        .tx_nbits = bits*(length+1),
        .rx_nbits = 0
    };

    //write command
    ret = ioctl(fd, SPI_IOC_MESSAGE(1), &tran);
    tran.tx_buf = (unsigned long)NULL;
    ret = ioctl(fd, SPI_IOC_MESSAGE(1), &tran);

    return ret;
}

static int spi_regwrites(int fd, uint8_t addr, uint8_t tx)
{
    int ret;
    uint8_t txbuf[2] = { 0 };
    uint8_t rxbuf[2] = { 0 };
    txbuf[0] = addr;
    txbuf[1] = tx;
    
    //printf("Writing message of length %i, buf %u", length, txbuf);
    struct spi_ioc_transfer tran = {
        .tx_buf = (unsigned long)txbuf,
        .rx_buf = (unsigned long)rxbuf,
        .len = 2,
        .delay_usecs = delay,
        .speed_hz = speed,
        .bits_per_word = bits,
        .tx_nbits = bits*2,
        .rx_nbits = 0
    };

    //write command
    ret = ioctl(fd, SPI_IOC_MESSAGE(1), &tran);
    tran.tx_buf = (unsigned long)NULL;
    ret = ioctl(fd, SPI_IOC_MESSAGE(1), &tran);
    return ret;
}

int spi_regread(int fd, uint8_t addr, uint8_t * rx, uint8_t length)
{
  int rc = -1;
  uint8_t *txbuf = (uint8_t*)alloca(length+1);
  uint8_t *rxbuf = (uint8_t*)alloca(length+1);
  txbuf[0]= addr;

  struct spi_ioc_transfer tran = {
    .tx_buf = (unsigned long)txbuf,
    .rx_buf = (unsigned long)rxbuf,
    .len = length+1,
    .delay_usecs = 10000,
    .speed_hz = speed,
    .bits_per_word = bits,
  };

  //start spi transfer
  rc = ioctl(fd, SPI_IOC_MESSAGE(1), &tran);
  //empty the fifo by doing a dummy transfer
  tran.tx_buf = (unsigned long)NULL;
  rc = ioctl(fd, SPI_IOC_MESSAGE(1), &tran);
  
  for(int i = 0; i < length; ++i)
  {
      rx[i] = rxbuf[i+1];
  }
  
  return rc;
}


static int mouse_configure(int fd)
{
    //uflag8_t flags;
    //PAN3101 no sleep register
    //flags.value = 0x0;
    //flags.flags.f0 = 1;
    //spi_regwrites(fd, 0x00, flags.value);
    uint8_t productid = 0x00;

    char c = '\0';
    do
    {
        if(spi_regread(fd, 0x00, &productid, 1) < 1)
                    pabort("cant read product id");
        usleep(1000);
        if(spi_regread(fd, 0x00, &productid, 1) < 1)
                    pabort("cant read product id");
        
        if(productid == 0x17)
        {
            printf("Avago-compatile sensor found (id=%.2X), continuting.\r\n", productid);
            break;
        }
        else
        {
            printf("Warning: Product ID read (id=%.2X) not compatible, proceed? [y/N/r]: ", productid);
            fflush(stdin);
            scanf(" %c", &c);
            if(c == 'n' || c == 'N')
            {
                return 0;
            }
            else if(c == 'r' || c == 'R')
            {
                continue;
            }
            else if(c != 'y' && c != 'Y')
            {
                printf("Could not understand '%c', try again.\r\n", c);
            }
        }
    } while(c != 'y' && c != 'Y');

    //configure.. except it works out of the box usually
    //guess this function only checks if the chip is properly connected...
    return 1;
}

static int mouse_test(int fd)
{
    int ret = 0;
    
    uint8_t motionstat = 0;
    uint8_t surfacequality = 0;
    uint8_t deltax = 0;
    uint8_t deltay = 0;

    fflush(stdout);
    
    if(spi_regread(fd, 0x05, &surfacequality, 1) < 1)
        pabort("cant read squal register");
    
    if(spi_regread(fd, 0x02, &motionstat, 1) < 1)
        pabort("cant read motion status");

    // Only after motionstatus has been set at bit 8,
    // then and only then read delta x and y
    if(motionstat & 0x80 )
    {
         if(spi_regread(fd, 0x02, &deltax, 1) < 1)
             pabort("cant read deltax");

         if(spi_regread(fd, 0x03, &deltay, 1) < 1)
             pabort("cant read deltay");
         
         printf("%.2X\t; %i\t; %i\t; %i\t\r\n", motionstat, surfacequality, deltax, deltay);
    }
    else
    {
        printf("%.2X\t; %i\t; ?\t; ?\t\r", motionstat, surfacequality);
    }

    //Motion clear
    if(spi_regwrites(fd, 0x12, 0x00) < 1)
        pabort("cant write motion clear");
}

int main(int argc, char *argv[])
{
    int ret = 0;
    int fd;

    printf("Opening SPI device '%s'\r\n", device);
    fd = open(device, O_RDWR);
    if (fd < 0)
        pabort("can't open device");

    /*
     * spi mode
     */
    ret = ioctl(fd, SPI_IOC_WR_MODE, &mode);
    if (ret == -1)
        pabort("can't set spi mode");

    ret = ioctl(fd, SPI_IOC_RD_MODE, &mode);
    if (ret == -1)
        pabort("can't get spi mode");

    /*
     * bits per word
     */
    ret = ioctl(fd, SPI_IOC_WR_BITS_PER_WORD, &bits);
    if (ret == -1)
        pabort("can't set bits per word");

    ret = ioctl(fd, SPI_IOC_RD_BITS_PER_WORD, &bits);
    if (ret == -1)
        pabort("can't get bits per word");

    /*
     * max speed hz
     */
    ret = ioctl(fd, SPI_IOC_WR_MAX_SPEED_HZ, &speed);
    if (ret == -1)
        pabort("can't set max speed hz");

    ret = ioctl(fd, SPI_IOC_RD_MAX_SPEED_HZ, &speed);
    if (ret == -1)
        pabort("can't get max speed hz");

    printf("spi device: %s\n", device);
    printf("spi mode: %d\n", mode);
    printf("bits per word: %d\n", bits);
    printf("max speed: %d Hz (%d KHz)\n", speed, speed/1000);
    
    if(mouse_configure(fd))
    {
        printf("MOT\t; SQAL; DX\t ;DY\t\r\n");
        while(1)
        {
            mouse_test(fd);
            usleep(100);
        }
    }
    

    close(fd);

    return ret;
}


    
