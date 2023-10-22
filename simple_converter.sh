#!/usr/bin/bash

simple_converter() {
    echo "Enter a definition:"
    read -a user_input
    arr_length="${#user_input[@]}"
    definition="${user_input[0]}"
    constant="${user_input[1]}"
    check_definition $arr_length $definition $constant
    isValidDefinition=$?
    if [ $isValidDefinition -eq 1 ]; then
        echo "Enter a value to convert:"
        read user_value
        check_value $user_value
        conversion $constant $user_value
    fi
}

check_definition() {
    re_def='[A-Za-z]_to_[A-Za-z]'
    re_const='^[+-]?[0-9]+\.?[0-9]*$'
    if [ $1 -eq 2 ] && [[ $2 =~ $re_def ]] && [[ $3 =~ $re_const ]]; then
        return 1
    else
        echo "The definition is incorrect!"
    fi
}

check_value() {
    re_val='^[0-9]+([.][0-9]+)?$'
    while [[ ! $1 =~ $re_val ]];
    do
        echo "Enter a float or integer value!"
        read user_value
    done
}

conversion() {
    result=$(echo "$1 * $2" | bc)
    echo "Result: $result"
}

simple_converter