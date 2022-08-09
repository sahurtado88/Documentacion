# PYTHON

## VARIABLES

### Creating Variables

Python has no command for declaring a variable.

A variable is created the moment you first assign a value to it. are case sensitive

 x = 5
y = "John"
print(x)
print(y)

### Casting

If you want to specify the data type of a variable, this can be done with casting.
Example
x = str(3)    # x will be '3'
y = int(3)    # y will be 3
z = float(3)  # z will be 3.0 

### Get the Type

You can get the data type of a variable with the type() function.

x = 5
y = "John"
print(type(x))
print(type(y)) 

### Variable Names
A variable can have a short name (like x and y) or a more descriptive name (age, carname, total_volume). Rules for Python variables:

    A variable name must start with a letter or the underscore character
    A variable name cannot start with a number
    A variable name can only contain alpha-numeric characters and underscores (A-z, 0-9, and _ )
    Variable names are case-sensitive (age, Age and AGE are three different variables)

### Many Values to Multiple Variables

Python allows you to assign values to multiple variables in one line:
Example
x, y, z = "Orange", "Banana", "Cherry"
print(x)
print(y)
print(z)

And you can assign the same value to multiple variables in one line:
Example
x = y = z = "Orange"
print(x)
print(y)
print(z)

### Output Variables

The Python print() function is often used to output variables.

x = "Python"
y = "is"
z = "awesome"
print(x, y, z)

You can also use the + operator to output multiple variables:
Example
x = "Python "
y = "is "
z = "awesome"
print(x + y + z)

### Python Data Types

Variables can store data of different types, and different types can do different things.

Python has the following data types built-in by default, in these categories:
- Text Type: 	str
- Numeric Types: 	int, float, complex
- Sequence Types: 	list, tuple, range
- Mapping Type: 	dict
- Set Types: 	set, frozenset
- Boolean Type: 	bool
- Binary Types: 	bytes, bytearray, memoryview

| Syntax | Description |
| ----------- | ----------- |
| x = "Hello World" |	str 	|
| x = 20 	   |int |	
| x = 20.5 	|float 	|
| x = 1j 	|complex 	|
| x = ["apple", "banana", "cherry"] 	|list 	|
|x = ("apple", "banana", "cherry") 	|tuple 	|
|x = range(6) 	|range 	|
|x = {"name" : "John", "age" : 36} |	dict |	
|x = {"apple", "banana", "cherry"} 	|set |	
|x = frozenset({"apple", "banana", "cherry"}) |	frozenset| 	
|x = True |	bool 	|
|x = b"Hello" |	bytes 	|
|x = bytearray(5) |	bytearray | 	 
|x = memoryview(bytes(5)) |	memoryview |

### Python Collections (Arrays)

There are four collection data types in the Python programming language:

    List is a collection which is ordered and changeable. Allows duplicate members.
    Tuple is a collection which is ordered and unchangeable. Allows duplicate members.
    Set is a collection which is unordered, unchangeable*, and unindexed. No duplicate members.
    Dictionary is a collection which is ordered** and changeable. No duplicate members.

*Set items are unchangeable, but you can remove and/or add items whenever you like.

**As of Python version 3.7, dictionaries are ordered. In Python 3.6 and earlier, dictionaries are unordered.

When choosing a collection type, it is useful to understand the properties of that type. Choosing the right type for a particular data set could mean retention of meaning, and, it could mean an increase in efficiency or security.


## List

Lists are used to store multiple items in a single variable.

Lists are one of 4 built-in data types in Python used to store collections of data, the other 3 are Tuple, Set, and Dictionary, all with different qualities and usage.

Lists are created using square brackets:
Example

Create a List:
thislist = ["apple", "banana", "cherry"]
print(thislist)
List Items

List items are ordered, changeable, and allow duplicate values.

List items are indexed, the first item has index [0], the second item has index [1] etc.
Ordered

When we say that lists are ordered, it means that the items have a defined order, and that order will not change.

If you add new items to a list, the new items will be placed at the end of the list.

The list() Constructor

It is also possible to use the list() constructor when creating a new list.
Example

Using the list() constructor to make a List:
thislist = list(("apple", "banana", "cherry")) # note the double round-brackets
print(thislist)

### TUPLE

Tuple

Tuples are used to store multiple items in a single variable.

Tuple is one of 4 built-in data types in Python used to store collections of data, the other 3 are List, Set, and Dictionary, all with different qualities and usage.

A tuple is a collection which is ordered and unchangeable.

Tuples are written with round brackets.
Example

Create a Tuple:
thistuple = ("apple", "banana", "cherry")
print(thistuple)

### SET

Sets are used to store multiple items in a single variable.

Set is one of 4 built-in data types in Python used to store collections of data, the other 3 are List, Tuple, and Dictionary, all with different qualities and usage.

A set is a collection which is unordered, unchangeable*, and unindexed.

* Note: Set items are unchangeable, but you can remove items and add new items.

Sets are written with curly brackets.
Example

Create a Set:
thisset = {"apple", "banana", "cherry"}
print(thisset) 

### Dictionary

Dictionaries are used to store data values in key:value pairs.

A dictionary is a collection which is ordered*, changeable and do not allow duplicates.

As of Python version 3.7, dictionaries are ordered. In Python 3.6 and earlier, dictionaries are unordered.

Dictionaries are written with curly brackets, and have keys and values:
Example

Create and print a dictionary:
thisdict =	{
  "brand": "Ford",
  "model": "Mustang",
  "year": 1964
}
print(thisdict)

## Python If ... Else
Python Conditions and If statements

Python supports the usual logical conditions from mathematics:

    Equals: a == b
    Not Equals: a != b
    Less than: a < b
    Less than or equal to: a <= b
    Greater than: a > b
    Greater than or equal to: a >= b

These conditions can be used in several ways, most commonly in "if statements" and loops.

An "if statement" is written by using the if keyword.
Example

If statement:
````
a = 33
b = 200
if b > a:
  print("b is greater than a")
````

In this example we use two variables, a and b, which are used as part of the if statement to test whether b is greater than a. As a is 33, and b is 200, we know that 200 is greater than 33, and so we print to screen that "b is greater than a".
Indentation

Python relies on indentation (whitespace at the beginning of a line) to define scope in the code. Other programming languages often use curly-brackets for this purpose.
Example

If statement, without indentation (will raise an error):
a = 33
b = 200
if b > a:
print("b is greater than a") # you will get an error
Elif

The elif keyword is pythons way of saying "if the previous conditions were not true, then try this condition".
Example
a = 33
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")

In this example a is equal to b, so the first condition is not true, but the elif condition is true, so we print to screen that "a and b are equal".
Else

The else keyword catches anything which isn't caught by the preceding conditions.
Example
a = 200
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")
else:
  print("a is greater than b")

## Python While Loops


Python has two primitive loop commands:

    while loops
    for loops

The while Loop

With the while loop we can execute a set of statements as long as a condition is true.
Example

Print i as long as i is less than 6:
i = 1
while i < 6:
  print(i)
  i += 1

Note: remember to increment i, or else the loop will continue forever.

## Python For Loops

A for loop is used for iterating over a sequence (that is either a list, a tuple, a dictionary, a set, or a string).

This is less like the for keyword in other programming languages, and works more like an iterator method as found in other object-orientated programming languages.

With the for loop we can execute a set of statements, once for each item in a list, tuple, set etc.
Example

Print each fruit in a fruit list:
fruits = ["apple", "banana", "cherry"]
for x in fruits:
  print(x)

The for loop does not require an indexing variable to set beforehand.
Looping Through a String

Even strings are iterable objects, they contain a sequence of characters:
Example

Loop through the letters in the word "banana":
for x in "banana":
  print(x)
The break Statement

With the break statement we can stop the loop before it has looped through all the items:
Example

Exit the loop when x is "banana":
fruits = ["apple", "banana", "cherry"]
for x in fruits:
  print(x)
  if x == "banana":
    break
Example

Exit the loop when x is "banana", but this time the break comes before the print:
fruits = ["apple", "banana", "cherry"]
for x in fruits:
  if x == "banana":
    break
  print(x)

##  Python Functions

A function is a block of code which only runs when it is called.

You can pass data, known as parameters, into a function.

A function can return data as a result.
Creating a Function

In Python a function is defined using the def keyword:
Example
def my_function():
  print("Hello from a function")
Calling a Function

To call a function, use the function name followed by parenthesis:
Example
def my_function():
  print("Hello from a function")

my_function()
Arguments

Information can be passed into functions as arguments.

Arguments are specified after the function name, inside the parentheses. You can add as many arguments as you want, just separate them with a comma.

The following example has a function with one argument (fname). When the function is called, we pass along a first name, which is used inside the function to print the full name:
Example
def my_function(fname):
  print(fname + " Refsnes")

my_function("Emil")
my_function("Tobias")
my_function("Linus")

Arguments are often shortened to args in Python documentations.
Parameters or Arguments?

The terms parameter and argument can be used for the same thing: information that are passed into a function.

From a function's perspective:

A parameter is the variable listed inside the parentheses in the function definition.

An argument is the value that is sent to the function when it is called.
Number of Arguments

By default, a function must be called with the correct number of arguments. Meaning that if your function expects 2 arguments, you have to call the function with 2 arguments, not more, and not less.
Example

This function expects 2 arguments, and gets 2 arguments:
def my_function(fname, lname):
  print(fname + " " + lname)

my_function("Emil", "Refsnes")
If you try to call the function with 1 or 3 arguments, you will get an error:
Example

This function expects 2 arguments, but gets only 1:
def my_function(fname, lname):
  print(fname + " " + lname)

my_function("Emil")
Arbitrary Arguments, *args

If you do not know how many arguments that will be passed into your function, add a * before the parameter name in the function definition.

This way the function will receive a tuple of arguments, and can access the items accordingly:
Example

If the number of arguments is unknown, add a * before the parameter name:
def my_function(*kids):
  print("The youngest child is " + kids[2])

my_function("Emil", "Tobias", "Linus")

Arbitrary Arguments are often shortened to *args in Python documentations.
Keyword Arguments

You can also send arguments with the key = value syntax.

This way the order of the arguments does not matter.
Example
def my_function(child3, child2, child1):
  print("The youngest child is " + child3)

my_function(child1 = "Emil", child2 = "Tobias", child3 = "Linus")

The phrase Keyword Arguments are often shortened to kwargs in Python documentations.
Arbitrary Keyword Arguments, **kwargs

If you do not know how many keyword arguments that will be passed into your function, add two asterisk: ** before the parameter name in the function definition.

This way the function will receive a dictionary of arguments, and can access the items accordingly:
Example

If the number of keyword arguments is unknown, add a double ** before the parameter name:
def my_function(**kid):
  print("His last name is " + kid["lname"])

my_function(fname = "Tobias", lname = "Refsnes")

Arbitrary Kword Arguments are often shortened to **kwargs in Python documentations.
Default Parameter Value

The following example shows how to use a default parameter value.

If we call the function without argument, it uses the default value:
Example
def my_function(country = "Norway"):
  print("I am from " + country)

my_function("Sweden")
my_function("India")
my_function()
my_function("Brazil")
Passing a List as an Argument

You can send any data types of argument to a function (string, number, list, dictionary etc.), and it will be treated as the same data type inside the function.

E.g. if you send a List as an argument, it will still be a List when it reaches the function:
Example
def my_function(food):
  for x in food:
    print(x)

fruits = ["apple", "banana", "cherry"]

my_function(fruits)
Return Values

To let a function return a value, use the return statement:
Example
def my_function(x):
  return 5 * x

print(my_function(3))
print(my_function(5))
print(my_function(9))
The pass Statement

function definitions cannot be empty, but if you for some reason have a function definition with no content, put in the pass statement to avoid getting an error.
Example
def myfunction():
  pass
Recursion

Python also accepts function recursion, which means a defined function can call itself.

Recursion is a common mathematical and programming concept. It means that a function calls itself. This has the benefit of meaning that you can loop through data to reach a result.

The developer should be very careful with recursion as it can be quite easy to slip into writing a function which never terminates, or one that uses excess amounts of memory or processor power. However, when written correctly recursion can be a very efficient and mathematically-elegant approach to programming.

In this example, tri_recursion() is a function that we have defined to call itself ("recurse"). We use the k variable as the data, which decrements (-1) every time we recurse. The recursion ends when the condition is not greater than 0 (i.e. when it is 0).

To a new developer it can take some time to work out how exactly this works, best way to find out is by testing and modifying it.
Example

Recursion Example
def tri_recursion(k):
  if(k > 0):
    result = k + tri_recursion(k - 1)
    print(result)
  else:
    result = 0
  return result

print("\n\nRecursion Example Results")
tri_recursion(6)