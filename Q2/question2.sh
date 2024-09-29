#!/bin/bash

function generate_fibonacci_series {	#function to generate a fibonacci series
    local fib=(1 1)	
    local a=1
    local b=1
    local i

    for ((i=2; i<100; i++))
    do
        local next=$((a + b))
        fib+=($next)
        a=$b
        b=$next
    done

    echo "${fib[@]}"
}

function contains_forbidden_pattern {
    local seq=$1
    local fibs=("${@:2}")

    for digit in {0..9}		#this loop is checking whether a digit between 0 and 9 is repeated more than 3 times
    do
        if [[ $seq =~ $digit{4,} ]]
        then
            return 0
        fi
    done

    for fib in "${fibs[@]}"	#this loop check whether any parts of the number is forming a fibonacci sequence
    do
        if [[ ${#fib} -ge 2 && $seq == *"$fib"* ]]
        then
            return 0
        fi
    done

    return 1
}

function generate_account_number {

    local length=$((RANDOM % 3 + 12))	#generates a length value between 12 and 14
    local number=""
    local valid=0
    local fibs=($(generate_fibonacci_series))

    for i in {1..100}	#this loop is for checking the generated numbers a 100 times, with valid constraints, otherwise it was going into an infinite loop of checking
    do
        number=$(shuf -i 1-9 -n 1)	#since first digit can not be zero
        number+=`shuf -i 0-9 -n $((length - 1)) | tr -d '[:space:]'`

        if contains_forbidden_pattern $number "${fibs[@]}"
        then
            continue
        else
            valid=1
            break
        fi
    done

    if [ $valid -eq 1 ]
    then
        echo $number
    fi
}

function generate_password {

    local length=$(( $RANDOM %3 + 8 ))		#generates a length value between 8 and 10
    local password=""
    local symbols="%&#$@()!"

    password=$(tr -dc 'a-zA-Z0-9%' < /dev/urandom | head -c $(($length - 3)))
    password+=$(tr -dc 'A-Z' < /dev/urandom | head -c 1)
    password+=$(tr -dc 'a-z' < /dev/urandom | head -c 1)
    password+=$(echo $symbols | fold -w1 | shuf | head -c 1)

    echo $password | fold -w1 | shuf | tr -d '\n'
    echo
}

echo "Generated Password: $(generate_password)"
echo "Generated Account Number: $(generate_account_number)"
