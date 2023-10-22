# Simple Converter

## Stage 3

### Description
Add a menu to your program and ask users what to do. If users select to end the program, quit with a farewell message.

### Objectives
Let's break the task into several steps:

* Start with a message ```Welcome to the Simple converter!```
* Ask for an option:
```
Select an option
0. Type '0' or 'quit' to end program
1. Convert units
2. Add a definition
3. Delete a definition
```
* Check whether the option is correct;
* If the option is incorrect, output ```Invalid option!```
* If the option is correct, go to the selected menu and output ```Not implemented!```
* Continue until a user enters ```quit``` or ```0```;
* When users want to quit, output ```Goodbye!```

### Examples
The greater-than symbol followed by a space (```> ```) represents the user input. Note that it's not part of the input.

#### Example 1:
```
Welcome to the Simple converter!

Select an option
0. Type '0' or 'quit' to end program
1. Convert units
2. Add a definition
3. Delete a definition
> 1
Not implemented!

Select an option
0. Type '0' or 'quit' to end program
1. Convert units
2. Add a definition
3. Delete a definition
> 2
Not implemented!

Select an option
0. Type '0' or 'quit' to end program
1. Convert units
2. Add a definition
3. Delete a definition
> 3
Not implemented!

Select an option
0. Type '0' or 'quit' to end program
1. Convert units
2. Add a definition
3. Delete a definition
> 0
Goodbye!
```

#### Example 2:
```
Welcome to the Simple converter!

Select an option
0. Type '0' or 'quit' to end program
1. Convert units
2. Add a definition
3. Delete a definition
> 5
Invalid option!

Select an option
0. Type '0' or 'quit' to end program
1. Convert units
2. Add a definition
3. Delete a definition
>
Invalid option!

Select an option
0. Type '0' or 'quit' to end program
1. Convert units
2. Add a definition
3. Delete a definition
> one
Invalid option!

Select an option
0. Type '0' or 'quit' to end program
1. Convert units
2. Add a definition
3. Delete a definition
> 0
Goodbye!
```