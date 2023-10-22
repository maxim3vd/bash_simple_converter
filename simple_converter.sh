#!/usr/bin/bash

echo "Enter a definition:"
read -a user_input
arr_length="${#user_input[@]}"
definition="${user_input[0]}"
constant="${user_input[1]}"