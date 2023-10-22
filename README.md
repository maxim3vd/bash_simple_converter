# Simple Converter

## Stage 2

### Description
In this stage, your program will learn how to convert units. Follow the objectives and examples to improve your program. Below is an example of a simple conversion in bash:
```
constant=1.6
value=10
result=$(echo "scale=2; $constant * $value" | bc -l)
printf "Result: %s\n" "$result"
```

### Objectives
Let's break the task into several steps:

* Start with the message ```Enter a definition:```;
* Check whether the user input is correct;
* Ask for the value to convert ```Enter a value to convert```:
* Check whether the user input is correct;
* Carry out the conversion;
* Print the result of the conversion to the standard output.


### Examples
The greater-than symbol followed by a space (> ) represents the user input. Note that it's not part of the input.

#### Example 1:
```
Enter a definition:
> metertocm 100
The definition is incorrect!
```

#### Example 2:
```
Enter a definition:
> meter_to_cm 100
Enter a value to convert:
> 5
Result: 500
```

#### Example 3:
```
Enter a definition:
> miles_to_km 1.6
Enter a value to convert:
> five
Enter a float or integer value!
>
Enter a float or integer value!
> 5
Result: 8.0
```