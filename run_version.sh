#!/bin/bash


# -------------------------------------------------------------------
# --       F U N C T I O N   D E F I N I T I O N                   --
# -------------------------------------------------------------------

function Usage()
{
	cat <<-EOF
Usage: $1 [Script path] [Version file path]

Example: 
	$1 /home/user1/Scripts/ /home/user1/Versions/

	EOF
	exit
}

# -------------------------------------------------------------------
# --           M A I N   S E C T I O N                             --
# -------------------------------------------------------------------

if [[ $# -eq 0 ]]
then
        Usage $0
fi

export SCRIPT_PATH=$1
export VERSION_PATH=$2

echo "Getting version from Versions.txt file"
export VERSION=`cat $VERSION_PATH/Version.txt | awk -F"=" {'print $2}'`

echo "Version is $VERSION"

cd "${SCRIPT_PATH}"
ls *.sh | sort > file1.txt

while read -r line; do

	export SV=`echo $line | sed -e s/[^0-9]//g`
	if [[ $SV -ge $VERSION ]]
	then
		./"$line"
	fi
done < 'file1.txt' 

rm -rf file1.txt

