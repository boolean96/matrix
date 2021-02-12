#!/bin/bash
#set -x
LOOP=0
WIN_LEN=$(tput cols)

mrand_display() {
	str=$1
	num=$2
	DVAL=$(printf '=%.0s' {1..100})
	DVAL=$(echo ${DVAL} | sed 's/=/q/g')
	DVAL+=${str}
	echo ${DVAL}
	
}

mrand(){
	chars=abcd1234ABCD
	#for i in {1..8} ; do
	for i in {1} ; do
	    echo -n "${chars:RANDOM%${#chars}:1}"
	done
	#sleep 0.1
	echo
}

run(){
	#while [[ ${LOOP} -eq 0 ]]; do
	VAL=$(mrand)
	#mrand_display ${VAL} ${WIN_LEN}
	mrand_display ${VAL} 100
	#done
}

run


