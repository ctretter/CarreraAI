import sys
import os
import subprocess
import shutil
import imp
import platform

if (platform.system() == "Windows"):
	import msvcrt
else:
	def getchar():
		# for UNIX only
		import tty, termios, sys
		fd = sys.stdin.fileno()
		old_settings = termios.tcgetattr(fd)
		try:
		  tty.setraw(sys.stdin.fileno())
		  ch = sys.stdin.read(1)
		finally:
		  termios.tcsetattr(fd, termios.TCSADRAIN, old_settings)
		return ch

CurrDir = os.getcwd()
os.chdir("../../../..")
if(os.path.isfile('PathConfig.py') == True):
	sys.path.append(os.getcwd())
	import PathConfig
else:
	print ("Error! PathConfig.py doesn't exist! Shutdown ...")
	sys.exit(1)
	
os.chdir(CurrDir)

print ("---------------------------------------")
print ("-- Start synthesis:")
print ("---------------------------------------")
print ("Press 1 to start QuartusGui")
print ("\n")
print ("Press 2 to start SynQuartusShell")
print ("\n")
print ("Press 3 to start SynLayQuartusShell")
print ("\n")
print ("Press 4 to start SynQuartusGui")
print ("\n")
print ("Press 5 to start SynLayQuartusGui")
print ("\n")
print ("Press 6 to cleanup synthesis directory")
print ("---------------------------------------")
if (platform.system() == "Windows"):
	user_input = msvcrt.getch().decode("utf-8").lower()
else:
	user_input = getchar()
print ("Choosen option: " + user_input)
	
if (user_input != "1" and user_input != "2" and user_input != "3" and user_input != "4" and user_input != "5"  and user_input != "6"):
	print ("Error! Invalid input options! Shutdown ...")
	
else:
	if (user_input == "2" or user_input == "3" or user_input == "4" or user_input == "5"):
	
		Option = 0
		if (user_input == "2"):
			Option = "1"
		
		elif (user_input == "3"):
			Option = "2"
		
		elif (user_input == "4"):
			Option = "3"
		
		else:
			Option = "4"
	
		PathToQuartus = os.environ.get("MY_QUARTUS_EXEC_SH")
		PathToScript = CurrDir + r"/../../../../flw/synlayQuartus/StartSyn.tcl "
		PathToQuartus = PathToQuartus + " -t " + PathToScript + Option
		subprocess.call(PathToQuartus, shell=True)
		if (user_input == "2" or user_input == "3"):
			print ("Press any key to continue ...")
			if (platform.system() == "Windows"):
				msvcrt.getch()
			else:
				getchar()
		
	elif (user_input == "1"):
		PathToQuartus = os.environ.get("MY_QUARTUS_EXEC_QUARTUS")
		subprocess.call([PathToQuartus], shell=True)
			
	elif (user_input == "6"):
		if (os.path.isdir("synlayResults")):
			shutil.rmtree("synlayResults")
		print ("Cleanup done!")

# remove comiled files for own included module	
if (os.path.exists(r"../../../../InstallDirQuartus.tcl")):
	os.remove(r"../../../../InstallDirQuartus.tcl")		
if (platform.system() == "Windows"):	
	shutil.rmtree(r"../../../../__pycache__")
else:
	os.remove(r"../../../../PathConfig.pyc")
