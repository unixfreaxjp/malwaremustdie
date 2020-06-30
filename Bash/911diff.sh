#!/bin/bash
# Search for modified files in a directory compared with other 
# Additionally can update differences between directories
# By Alberto Lepe (www.alepe.com, www.support.ne.jp) created: 16III2009
# ver. 17IV2009
# Extract path code used from: 
# http://www.unix.com/shell-programming-scripting/37916-trying-cut-path-file.html
# Exclude .svn folders from:
# http://snipplr.com/view/5894/find-all-files-and-directories-in-project-excluding-svn/
# While Loop:
# http://www.linuxcommand.org/wss0130.php
#
# TODO
# check file size, date and / or content option: 
#		accept more than 1 method, example: -m date
# use of "file -i" (allow arguments)
# Copy modified files only if newer
#
###########################################################################
function usage
{
	echo "Usage: difff [OPTIONS] directory1 directory2"
	echo "Compare 2 directories files"
	echo 
	echo "OPTIONS:"
	echo "	-f Use a custom find filter."
	echo "	-m Use a custom compare method."
	echo "	-n Output the result file by file."
	echo "	-q Output only the files that differ."
	echo "	-i Output only the files that are missing."
	echo "	-s Report when two files are the same."
	echo "	-x Exclude files that match PAT."
	echo "	-v Run in verbose mode."
    echo 
    echo "OPTIONS (FOR SYNC):"
    echo "	-c Copy modified files from ORIGIN to TARGET"
#TODO    echo " -w Copy modified files only if newer in date"
    echo "	-t Copy missing files to TARGET"
    echo "	-o Copy missing files to ORIGIN"
	echo
	echo "EXAMPLES:"
	echo "	difff /var/www /var/new"
	echo "	difff -f '-name=\"*.php\"' /var/www /var/new"
	echo "	difff -m 'md5sum' /var/www /var/new"
	echo "	difff -x 'CVS' /var/www /var/new"
	echo "	difff -n -s /var/www /var/new"
	echo
	echo "NOTES:"
	echo "	directory1 and directory2 can be relative or absolute paths"
	echo "	with, ot with-out trailing slash '/'"
	echo
	echo "TESTED METHODS:"
	echo "	md5sum shasum diff base64 cksum"
	echo "	By default is 'date' which is modification date"
	echo
	echo "WHEN USING -n OPTION:"
	echo "	M = modified"	
	echo "	I = identical"
	echo "	> = found in directory1 but not in directory2"
	echo "	< = found in directory2 but not in directory1"
	echo
}

# Compare Method, e.g. md5sum shasum diff base64 cksum date
METHOD="date"
# Find Filter, e.g. -type=f -name='*.php'
FINDFILTER='-type f'
#Optional:
FINDSKIP='.svn'

VERBOSE=0

#OPTIONS:
OUTNORMAL=0
OUTDIFFONLY=0
OUTIDENTIC=0
OUTMISSING=0

#SYNC OPTIONS:
COPYMODIF=0
COPYNEWER=0
MISSTARGET=0
MISSORIGIN=0

if [ $# = 0 ]; then
	usage
	exit 1
fi

while [ "$1" != "" ]; do
    case $1 in
        -f )           			shift
                                FINDFILTER=$1
                                ;;
        -m )    			    shift
								METHOD=$1	
                                ;;
        -x )    			    shift
								FINDSKIP=$1	
                                ;;
        -v )    			    VERBOSE=1	
                                ;;
        -n )    			    OUTNORMAL=1	
                                ;;
        -q )    			    OUTDIFFONLY=1	
                                ;;
        -s )    			    OUTIDENTIC=1
                                ;;
        -i )    			    OUTMISSING=1	
                                ;;
        -c )    			    COPYMODIF=1
                                ;;
#        -w )    			    COPYNEWER=1	
#                                ;;
        -t )    			    MISSTARGET=1
                                ;;
        -o )    			    MISSORIGIN=1
                                ;;
        -h | --help )           usage
                                exit
                                ;;
		* )						PATH1=$1
								shift
								PATH2=$1
								;;
    esac
    shift
done

###########################################################################
TEST=$(which realpath)
if test "$TEST" = ""; then
    echo "Please install 'realpath', for example: aptitude install realpath"
    exit 1
fi
PATH1=$(realpath $PATH1)
PATH2=$(realpath $PATH2)
if [ "$PATH1" == "" ]; then
	echo "ERROR: ORIGIN do not exists."
	exit 1
fi
if [ "$PATH2" == "" ]; then
	echo "ERROR: TARGET do not exists."
	exit 1
fi

if [ $OUTNORMAL = 0 -o $VERBOSE = 1 ]; then
echo "ORIGIN: $PATH1"
echo "TARGET: $PATH2"
fi

if [ $VERBOSE = 1 ]; then OUTNORMAL=1; fi
if [ $VERBOSE = 1 ]; then echo "Method: $METHOD"; fi

if [ "$FINDSKIP" = "" ]; then
    FCOMM="$PATH1 $FINDFILTER"
else
    FCOMM="$PATH1 ! ( -name '$FINDSKIP' -prune ) $FINDFILTER"
fi

if [ $VERBOSE = 1 ]; then echo "Find command: find $FCOMM"; fi
FILES=`find $FCOMM`

if [ $VERBOSE = 1 ]; then echo; echo "Comparing ORIGIN with TARGET **********"; fi
for FN1 in $FILES
do
    BASEPATH=${FN1#$PATH1}
    FILENAME=$(basename $FN1)
    if [ $VERBOSE = 1 ]; then echo "File (ORIGIN): $FILENAME"; fi

    if test -f $FN1 ; then # if file exists... 
        if test -s $FN1; then # and is not empty
            FN2="$PATH2/$BASEPATH"
            if [ $VERBOSE = 1 ]; then echo "File (TARGET): $FN2"; fi
            if test -f $FN2; then # if file exists in path2... 
				if [ $OUTMISSING = 0 ]; then
					if [ "$METHOD" = "date" ]; then
						HASH1=$(ls -l $FN1 | cut -d " " -f 6,7)
						HASH2=$(ls -l $FN2 | cut -d " " -f 6,7)
					else
						HASH1=$($METHOD $FN1 | cut -d " " -f 1)
						HASH2=$($METHOD $FN2 | cut -d " " -f 1)
					fi

					if [ $VERBOSE = 1 ]; then echo "File1 INFO: $HASH1"; fi
					if [ $VERBOSE = 1 ]; then echo "File2 INFO: $HASH2"; fi

					if [ "$HASH1" != "$HASH2" ]; then
						if [ $OUTNORMAL = 0 ]; then
							MODIFIED="${MODIFIED}\n${BASEPATH}"
						else
							echo "M	${BASEPATH}"
						fi
						if [ $COPYMODIF = 1 ]; then
							cp $FN1 $FN2 
							if [ $VERBOSE = 1 ]; then echo "Copied: $FN1 to $FN2"; fi
						fi
					else
						if [ $OUTNORMAL = 0 ]; then
							IDENTICAL="${IDENTICAL}\n${BASEPATH}"
						else
							if [ $OUTIDENTIC = 1 ]; then
								echo "I	${BASEPATH}"
							fi
						fi
					fi
				fi
            else
				if [ $OUTNORMAL = 0 ]; then
                	NOTPATH2="${NOTPATH2}\n${BASEPATH}"
				else
					if [ $OUTDIFFONLY = 0 ]; then
						echo ">	${BASEPATH}"
					fi
				fi
                if [ $MISSTARGET = 1 ]; then
                    cp $FN1 $FN2 
                    if [ $VERBOSE = 1 ]; then echo "Copied: $FN1 to $FN2"; fi
                fi
            fi
        fi   
    fi
done
#SECOND ROUND
if [ $VERBOSE = 1 ]; then echo; echo "Looking for missing files in ORIGIN **********"; fi

if [ $OUTDIFFONLY = 0 -o $OUTMISSING = 1 ]; then
FILES=`find $PATH2 $FINDFILTER`
for FN2 in $FILES
do
    BASEPATH=${FN2#$PATH2}
    FILENAME=$(basename $FN2)
    if [ $VERBOSE = 1 ]; then echo "File (TARGET): $FILENAME"; fi

    if test -f $FN2 ; then # if file exists... 
        if test -s $FN2; then # and is not empty
            FN1="$PATH1/$FILENAME"
            if [ ! -f $FN1 ]; then # if file do not exists in path1... 
				if [ $OUTNORMAL = 0 ]; then
					NOTPATH1="${NOTPATH1}\n${BASEPATH}"
				else
					echo "<	${BASEPATH}"
				fi
                if [ $MISSORIGIN = 1 ]; then
                    cp $FN1 $FN2 
                    if [ $VERBOSE = 1 ]; then echo "Copied: $FN1 to $FN2"; fi
                fi
            fi
        fi   
    fi
done
fi


if [ $OUTNORMAL = 0 ]; then
	if [ "$MODIFIED" != "" ]; then
	echo 
	echo "************ MODIFIED **************"
	echo -e $MODIFIED
	fi

	if [ $OUTDIFFONLY = 0 ]; then
		if [ "$NOTPATH1" != "" ]; then
			echo 
			echo "** NOT IN PATH1: ${PATH1} :"
			echo -e $NOTPATH1
		fi
		if [ "$NOTPATH2" != "" ]; then
			echo 
			echo "** NOT IN PATH2: ${PATH2} :"
			echo -e $NOTPATH2
		fi
	fi

	if [ $OUTIDENTIC = 1 -a "$IDENTICAL" != "" ]; then
	echo 
	echo "************ IDENTICAL ************"
	echo -e $IDENTICAL
	fi
	echo
fi
