import os
#######################################################
## DESCRIPTION:
##	THIS PYTHON SCRIPT IS USED TO CONFIGURE ALL 
##	ENVIRONMENT VARIABLES FOR FHLOW 1.4
##
## NOTICE:
##	THE 'r' BEFORE EACH STRING IS USED TO KEEP THE
##	FORMAT OF PATH CORRECT FOR ALL FURTHER EXECUTIONS
##
## ATTENTION:
##	CHANGES ARE ALLOWED FOR THE USER VARIABLE AND THE 
##	PATH VARIABLES FOR FHLOW
## 	PLEASE HAVE IN MIND THAT ALL ENVIRONMENT VARIABLES
## 	OF YOUR OWN OPERATING SYSTEM ARE NEEDED TO EXECUTE 
##	EACH STEP OF FHLOW IN A RECOMMANED WAY
#######################################################

import getpass
import platform

#######################################################
##	SET YOUR USER NAME ON YOUR HOME COMPUTER
#######################################################
User = "Michi"

#######################################################
## 	SET DEFAULT ENVIRONMENT VARIABLES
#######################################################
if (User != getpass.getuser()):

	#   WINDOWS 	
	if (platform.system() == "Windows"):
	
		# set variables for Altera Quartus:
		os.environ['QUARTUS_ROOTDIR'] = r"C:\altera\16.0\quartus"
		os.environ['QUARTUS_INSTALL_DIR'] = r"C:/altera/16.0/quartus"
		os.environ['MY_QUARTUS_PATH'] = os.environ.get('QUARTUS_ROOTDIR')
		os.environ['MY_QUARTUS_EXEC_QUARTUS'] = os.environ.get('MY_QUARTUS_PATH') + r"\bin64\quartus.exe"
		os.environ['MY_QUARTUS_EXEC_SH'] = os.environ.get('MY_QUARTUS_PATH') + r"\bin64\quartus_sh.exe"
	
		# set variables for Mentor Graphics Modelsim/Questasim:
		os.environ['MY_QUESTASIM_PATH'] = r"C:\questasim_10.3c"
		os.environ['MY_QUESTASIM_EXEC_QUESTASIM'] = os.environ.get('MY_QUESTASIM_PATH') + r"\win32\questasim.exe"
		os.environ['MY_QUESTASIM_EXEC_VSIM'] = os.environ.get('MY_QUESTASIM_PATH') + r"\win32\vsim.exe"
	
	#	UNIX 
	else:
	
		# set variables for Altera Quartus:
		os.environ['QUARTUSDIR'] = r"/home/michi/altera/16.0/quartus/"
		os.environ['MY_QUARTUS_EXEC_QUARTUS'] = os.environ.get('QUARTUSDIR') + r"bin/quartus"
		os.environ['MY_QUARTUS_EXEC_SH'] = os.environ.get('QUARTUSDIR') + r"bin/quartus_sh"
	
		# set variables for Mentor Graphics Modelsim/Questasim:
		os.environ['MODELSIM'] = r"/home/michi/altera/16.0/modelsim_ase"
		os.environ['MY_QUESTASIM_EXEC_QUESTASIM'] = os.environ.get('MODELSIM') + r"/bin/vsim"
		os.environ['MY_QUESTASIM_EXEC_VSIM'] = os.environ.get('MODELSIM') + r"/bin/vsim"

#######################################################
## 	SET USER DEFINED ENVIRONMENT VARIABLES
#######################################################	
else:

	#	WINDOWS
	if (platform.system() == "Windows"):

		# set variables for Altera Quartus:
		os.environ['QUARTUS_ROOTDIR'] = r"C:\altera\15.0\quartus"
		os.environ['QUARTUS_INSTALL_DIR'] = r"C:/altera/15.0/quartus"
		os.environ['MY_QUARTUS_PATH'] = os.environ.get('QUARTUS_ROOTDIR')
		os.environ['MY_QUARTUS_EXEC_QUARTUS'] = os.environ.get('MY_QUARTUS_PATH') + r"\bin64\quartus.exe"
		os.environ['MY_QUARTUS_EXEC_SH'] = os.environ.get('MY_QUARTUS_PATH') + r"\bin64\quartus_sh.exe"
		
		# set variables for Mentor Graphics Modelsim/Questasim:
		os.environ['MY_QUESTASIM_PATH'] = r"C:\questasim_10.0b"
		os.environ['MY_QUESTASIM_EXEC_QUESTASIM'] = os.environ.get('MY_QUESTASIM_PATH') + r"\win32\questasim.exe"
		os.environ['MY_QUESTASIM_EXEC_VSIM'] = os.environ.get('MY_QUESTASIM_PATH') + r"\win32\vsim.exe"
		
	#	UNIX
	else:
		
		# set variables for Altera Quartus:
		os.environ['QUARTUSDIR'] = r"/home/michi/altera/15.0/quartus/"
		os.environ['MY_QUARTUS_EXEC_QUARTUS'] = os.environ.get('QUARTUSDIR') + r"bin/quartus"
		os.environ['MY_QUARTUS_EXEC_SH'] = os.environ.get('QUARTUSDIR') + r"bin/quartus_sh"
	
		# set variables for Mentor Graphics Modelsim/Questasim:
		os.environ['MODELSIM'] = r"/home/michi/altera/15.0/modelsim_ase"
		os.environ['MY_QUESTASIM_EXEC_QUESTASIM'] = os.environ.get('MODELSIM') + r"/bin/vsim"
		os.environ['MY_QUESTASIM_EXEC_VSIM'] = os.environ.get('MODELSIM') + r"/bin/vsim"


		
#######################################################
## ATTENTION:
## 	DO NOT CHANGE THE FOLLOWING LINES OF CODE !!!
## 	USED TO SET VARIABLE FOR INSTALL DIRECTORY OF QUARTUS
## 	IN TCL FOR IP CORE SIMULATION
#######################################################
with open("InstallDirQuartus.tcl", "w") as InstallDirTcl:
	if (platform.system() == "Windows"):
		DataForFile = "set QUARTUS_INSTALL_DIR \"" + os.environ.get('QUARTUS_INSTALL_DIR') + "\""
	else:	
		DataForFile = "set QUARTUS_INSTALL_DIR \"" + os.environ.get('QUARTUSDIR') + "\""
	InstallDirTcl.write(DataForFile)
InstallDirTcl.close()
			
