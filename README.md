Use Case: 
 
•	A condition requires execution of numbered shell scripts stored in a specified folder, named such as 'Shell Folder'

•	The shell scripts, within the specified folder, may contain any simple shell command(s) of your choice

•	File name of the shell scripts are supposed to follow a standard naming convention which is 123.abc.sh. However, there might be exceptions, some files name may have some gaps and there isn't always a. (dot) after the beginning number

•	A Version.txt is stored in a specified folder named such as “Version”. This txt file contains a single entry, such as Version number= 110

•	Condition for execution of shell scripts: Looking up the version number in the Version.txt file and comparing this number to the numbers in the shell script names

•	If the version number matches the highest number from the scripts then nothing is executed

•	All the shell scripts that contain a number higher than the version number will be executed in numerical order

•	In addition, the version number is updated after the script execution with the executed shell script's number 

•	Your script will be executed automatically via a program with following command line parameters

•	Directory of your shell scripts

•	Directory of your version.txt file  

