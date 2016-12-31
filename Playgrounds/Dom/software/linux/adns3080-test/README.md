# ADNS3080 Test Utility

## Notes

This program uses the spidev example driver from MontaVista.
(https://raw.githubusercontent.com/raspberrypi/linux/rpi-3.10.y/Documentation/spi/spidev_test.c)

Configured for the NTC Chip SBC platform.
To use it with alternative hardware, please redefine spidev accordingly.

## Usage

Connect the IC using 4-wire SPI. 
Start the program, exit using SIGTERM.

To log the output, the `tee` command may be used

```bash
./mousetest | tee "./example.log"
```
