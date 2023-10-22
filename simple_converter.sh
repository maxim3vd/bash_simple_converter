#!/usr/bin/bash

simple_converter() {
    echo "Enter a definition:"
    read -a user_input
    arr_length="${#user_input[@]}"
    definition="${user_input[0]}"
    constant="${user_input[1]}"
    check_definition
    isValidDefinition=$?
    if [ $isValidDefinition -eq 1 ]; then
        echo "Enter a value to convert:"
    fi
}

check_definition() {
    re_def='[A-Za-z]_to_[A-Za-z]'
    re_const='^[+-]?[0-9]+\.?[0-9]*$'
    if [ $arr_length -eq 2 ] && [[ $definition =~ $re_def ]] && [[ $constant =~ $re_const ]];then
        echo "The definition is correct!"
        return 1
    else
        echo "The definition is incorrect!"
        return 0
    fi
}

simple_converter