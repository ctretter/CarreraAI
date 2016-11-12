import sys
import os
import subprocess
import shutil
import imp
import platform
import glob

CurrDir = os.getcwd()
os.chdir("..")
if(os.path.isfile('PathConfig.py') == True):
	sys.path.append(os.getcwd())
	import PathConfig
else:
	print ("Error! PathConfig.py doesn't exist! Shutdown ...")
	sys.exit(1)
	
os.chdir(CurrDir)

CURR_SYN_DIRECTORY = os.getcwd()
CURR_BASE_DIRECTORY = CURR_SYN_DIRECTORY + "/.."

print ("------------------------------------------------------------------------------")
print ("-- Create IP core for fhlow:")
print ("------------------------------------------------------------------------------")
print ("\n")
UnitName = input("Enter preferred unitname (without prefix 'unit'): ")
print ("\n")
print ("------------------------------------------------------------------------------")

if (os.path.exists(CURR_SYN_DIRECTORY + "//unit" + UnitName)):
	print ("------------------------------------------------------------------------------")
	print ("\n")
	print ("-- ERROR!")
	print ("-- Unitname '" + UnitName + "' already exists!")
	print ("-- Shutdown of CreateIPCore.py ...")
	print ("\n")
	print ("------------------------------------------------------------------------------")
	
else:
	os.mkdir(CURR_SYN_DIRECTORY + "/unit" + UnitName)
	UnitDirectory = "unit" + UnitName
	os.chdir(UnitDirectory)
	PathToQuartus = os.environ.get("MY_QUARTUS_EXEC_QUARTUS")
	subprocess.call(PathToQuartus, shell=True)
	
	# create new simulation script
	Done = False
	ToDelete = False
	InFunction = False
	NewScriptData = []

	# Altera MegaWizard
	if (os.path.exists(UnitName + "_sim/mentor")):
		os.chdir(UnitName + "_sim/mentor")
		if (os.path.isfile("msim_setup.tcl")):
			with open("msim_setup.tcl", 'r') as Script:
				for line in Script:
					if ("*ModelSim ALTERA*" in line and InFunction == True):
						ToDelete = True
						InFunction = False
					elif ("}" in line and ToDelete == True):
						Done = True
						ToDelete = False
					else:
						NewScriptData.append(line)
						if ("alias dev_com {" in line):
							InFunction = True
						
			Script.close()		
				
				
		
		if (Done == True):
			os.remove("msim_setup.tcl")
		with open("IPCoreSim.tcl", "w+") as NewScript:
			for line in NewScriptData:
				NewScript.write(line)
		NewScript.close()
		# change back to grpIPCores
		os.chdir("../../..")
		
	else:
		# Altera Qsys
		if (os.path.exists(UnitName + "/simulation/mentor")):
			os.chdir(UnitName + "/simulation/mentor")
			if (os.path.isfile("msim_setup.tcl")):
				with open("msim_setup.tcl", 'r') as Script:
					for line in Script:
						if ("*ModelSim ALTERA*" in line and InFunction == True):
							ToDelete = True
							InFunction = False
						elif ("}" in line and ToDelete == True):
							Done = True
							ToDelete = False
						else:
							NewScriptData.append(line)
							if ("alias dev_com {" in line):
								InFunction = True
						
				Script.close()		
				
				
		
			if (Done == True):
				os.remove("msim_setup.tcl")
			with open("IPCoreSim.tcl", "w+") as NewScript:
				for line in NewScriptData:
					NewScript.write(line)
			NewScript.close()
			# change back to grpIPCores
			os.chdir("../../..")
		else: 
			print ("FATAL ERROR!")
			os.chdir("..")
	
	
# remove comiled files for own included module	
if (os.path.exists(r"../InstallDirQuartus.tcl")):
	os.remove(r"../InstallDirQuartus.tcl")		
if (platform.system() == "Windows"):	
	shutil.rmtree(r"../__pycache__")
else:
	os.remove(r"../PathConfig.pyc")
	
sys.exit(1)
	
	

