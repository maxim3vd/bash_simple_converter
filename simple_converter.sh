#!/usr/bin/bash

echo "Enter a definition:"
read -a user_input
arr_length="${#user_input[@]}"
definition="${user_input[0]}"
constant="${user_input[1]}"
re_def='[A-Za-z]_to_[A-Za-z]'
re_const='^[+-]?[0-9]+\.?[0-9]*$'
if [ $arr_length -eq 2 ] && [[ $definition =~ $re_def ]] && [[ $constant =~ $re_const ]];then
    echo "The definition is correct!"
else
    echo "The definition is incorrect!"
fi
