#!/usr/bin/bash

simple_converter() {
    echo "Welcome to the Simple converter!"

    while :
    do
        display_options
        read user_option
        case $user_option in
            0 | quit )
                echo "Goodbye!"
                break;;
            1 | 2 | 3 )
                echo "Not implemented!";;
            * )
                echo "Invalid option!";;
        esac
    done
}

display_options() {
    echo -e "\nSelect an option"
    echo "0. Type '0' or 'quit' to end program"
    echo "1. Convert units"
    echo "2. Add a definition"
    echo "3. Delete a definition"
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