import sys
import os
import subprocess
import shutil
import imp
import platform
import glob

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
print ("-- Start simulation:")
print ("---------------------------------------")
print ("Press 1 to start QuestasimGui")
print ("\n")
print ("Press 2 to start CompQuestasimShell")
print ("\n")
print ("Press 3 to start CompSimQuestasimShell")
print ("\n")
print ("Press 4 to start CompQuestasimGui")
print ("\n")
print ("Press 5 to start CompSimQuestasimGui")
print ("\n")
print ("Press 6 to cleanup simulation directory")
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
		Arg = 0
		if (user_input == "2"):
			Option = "1"
			Arg = "-c"
		
		elif (user_input == "3"):
			Option = "2"
			Arg = "-c"
		
		elif (user_input == "4"):
			Option = "3"
			Arg = "-gui"
		
		else:
			Option = "4"
			Arg = "-gui"
	
		PathToQuesta = os.environ.get("MY_QUESTASIM_EXEC_VSIM")
		PathToQuesta = PathToQuesta + """ -do "do ../../../../flw/simQuestasim/StartSim.do """ + Option + """" """ + Arg
		subprocess.call(PathToQuesta, shell=True)
		
		if (user_input == "2" or user_input == "3"):
			print ("Press any key to continue ...")
			if (platform.system() == "Windows"):
				msvcrt.getch()
			else:
				getchar()
		
	elif (user_input == "1"):
		PathToQuesta = os.environ.get("MY_QUESTASIM_EXEC_QUESTASIM")
		subprocess.call(PathToQuesta, shell=True)
			
	elif (user_input == "6"):
		if (os.path.isdir(r"..\..\..\..\flw\simQuestasim\work")):
			shutil.rmtree(r"..\..\..\..\flw\simQuestasim\work")
			
		if (os.path.isdir("libraries")):
			shutil.rmtree(r"libraries")
			
		if (os.path.exists("SimCommand.tcl")):
			os.remove("SimCommand.tcl")	
		if (os.path.exists("transcript")):
			os.remove("transcript")
		filelist = glob.glob("*.wlf") + glob.glob("*.raw") + glob.glob("*.sfk") + glob.glob("*.vstf") + glob.glob("*.ini")
		for f in filelist:
			os.remove(f)
		print ("Cleanup done!")
		
# remove comiled files for own included module
if (os.path.exists(r"../../../../InstallDirQuartus.tcl")):
	os.remove(r"../../../../InstallDirQuartus.tcl")		
if (platform.system() == "Windows"):	
	shutil.rmtree(r"../../../../__pycache__")
else:
	os.remove(r"../../../../PathConfig.pyc")
		
