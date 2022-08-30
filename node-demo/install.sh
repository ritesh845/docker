#!/bin/bash
# Author: RITESH
# Copyright (c) ritesh-panchal
# Script follow here :

# echo "What is your name?"
# read PERSON
# echo "Hello, $PERSON"

# pwd
# ls

# NAME="RITESH PANCHAL"
# #readonly NAME
# NAME="RAHUL"
# #unset NAME
# echo $NAME

# echo "First Name $0"
# echo "First Parameter : $1"
# echo "Second Parameter : $2"
# echo "Quoted Values: $@"
# echo "Quoted Values: $*"
# echo "Total Number of Parameters : $#"

# for TOKEN in $*
# do
# 	echo $TOKEN
# done

# echo `expr 2 + 2`

# a=0

# while [ "$a" -lt 10 ]
# do 
# 	b="$a"
# 	while [ "$b" -ge 0 ]
# 	do	
# 		echo -n "* "
# 		b=`expr $b - 1`
# 	done
# 	echo
# 	a=`expr $a + 1`
# done


# a=10

# while [ "$a" -ge 0 ]
# do 
# 	b=0
# 	while [ "$b" -lt $a ]
# 	do	
# 		echo -n "* "
# 		b=`expr $b + 1`
# 	done
# 	echo
# 	a=`expr $a - 1`
# done


port=$1


sed -i -e  "s/\(PORT=\).*/\1$1/"  .env