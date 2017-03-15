import spidev
import time
import RPi.GPIO as GPIO

spi = spidev.SpiDev()
spi.open(0,1)
spi.max_speed_hz = 5000

RESET = 15
MISO = 21
MOSI = 19
SYSCLK = 23
NCS = 26

HIGH = 1
LOW = 0



GPIO.setmode(GPIO.BOARD)
GPIO.setup(RESET, GPIO.OUT)
#GPIO.setup(MISO, GPIO.IN)
#GPIO.setup(MOSI, GPIO.OUT)
#GPIO.setup(SYSCLK, GPIO.OUT)
GPIO.setup(NCS, GPIO.OUT)

# perform reset
GPIO.output(RESET, HIGH)
time.sleep(1)
GPIO.output(RESET, LOW)
time.sleep(1)

print("Init done ...")

GPIO.output(NCS, HIGH)		


print("Try to read ID...")
GPIO.output(NCS, LOW)
spi.writebytes([0x00])
GPIO.output(NCS, HIGH)
time.sleep(0.001) #wait 
GPIO.output(NCS, LOW)
resp = spi.readbytes(1)
GPIO.output(NCS, HIGH)
time.sleep(1)
print("Product ID: " + str(resp[0]))
	
while True:	
	#print("Try to read Motion register...")
	GPIO.output(NCS, LOW)
	spi.writebytes([0x02])
	GPIO.output(NCS, HIGH)
	time.sleep(0.0001) #wait 
	GPIO.output(NCS, LOW)
	resp = spi.readbytes(1)
	GPIO.output(NCS, HIGH)
	time.sleep(0.01)
	#print(resp)
	
	if(int(resp[0]) == 128):
		#print("Try to read Delta X...")
		GPIO.output(NCS, LOW)
		spi.writebytes([0x03])
		GPIO.output(NCS, HIGH)
		time.sleep(0.0001) #wait 
		GPIO.output(NCS, LOW)
		resp = spi.readbytes(1)
		GPIO.output(NCS, HIGH)
		time.sleep(0.01)
		deltaX = int(resp[0])

		#print("Try to read Delta Y...")
		GPIO.output(NCS, LOW)
		spi.writebytes([0x04])
		GPIO.output(NCS, HIGH)
		time.sleep(0.0001) #wait 
		GPIO.output(NCS, LOW)
		resp = spi.readbytes(1)
		GPIO.output(NCS, HIGH)
		time.sleep(1)
		print("delta X: " + str(deltaX) + " delta Y: " + str(resp[0]))
		