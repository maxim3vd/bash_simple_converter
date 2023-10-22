# Simple Converter

## Stage 1

### Description
A unit converter converts different units. Before getting to the actual conversion, let's teach your program to read the standard input. It should also understand whether the user input is correct or not.

### Objectives
Let's break the task into several steps:

* Start with the message ```Enter a definition:```
* Read a string and a number on one line from the standard input;
* Check whether the string is correct. The string should have the following format: ```unitone_to_unittwo```;
* Check whether the numbers are integers or floats. Numbers could be positive, negative, or zeros;
* If everything is correct, output the following message: ```The definition is correct!``` Otherwise, output ```The definition is incorrect!```

You can read a user input as an array. The code snippet below is an example of how you can do it. Feel free to use any method:
```
read -a user_input
arr_length="${#user_input[@]}"
definition="${user_input[0]}"
constant="${user_input[1]}"
echo "$arr_length"
echo "$definition"
echo "$constant"
```
You can check a variable with regex expressions. The code snippet below is an example of how you can do it. Feel free to use any method:
```
string="universe"
re='^[A-Za-z]+$'
if [[ "$string" =~ $re ]]; then
    echo "A message!"
else
    echo "Another message!"
fi
```

### Examples
The greater-than symbol followed by a space (```> ```) represents the user input. Note that it's not part of the input.

#### Example 1:
```
Enter a definition:
> feet_to_meter 0.304
The definition is correct!
```

#### Example 2:
```
Enter a definition:
> miles_to_km 1.6
The definition is correct!
```

#### Example 3:
```
Enter a definition:
> kgtoounce 35.27
The definition is incorrect!
```

#### Example 4:
```
Enter a definition:
> kg_to_ounce 35.27 gr
The definition is incorrect!
```

#### Example 5:
```
Enter a definition:
> feet_to_meter
The definition is incorrect!
```

#### Example 6:
```
Enter a definition:
>
The definition is incorrect!
```