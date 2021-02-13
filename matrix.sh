#!/bin/bash
#set -x
LOOP=0
count=0
WIN_LEN=$(tput cols)

setup(){
IFS='%'
}

clean_down(){
unset IFS
}

mrand_display() {
	str=$1
	num=$2
	space=""
	while [[ ${count} -ne ${WIN_LEN} ]]; do
		count=$((count+1))
		space+=" "
	done
	space+=${str}
	echo ${space}
}

mrand(){
	chars=abcd1234ABCD
	for i in {1} ; do
	    echo -n "${chars:RANDOM%${#chars}:1}"
	done
	echo
}

run(){
	VAL=$(mrand)
	WIN_LEN=$(jot -r 1  1 ${WIN_LEN})
	mrand_display ${VAL} ${WIN_LEN}
}

setup
run
clean_down


