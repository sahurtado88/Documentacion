os# PYTHON


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

a=eval(input("enter a value: "))

### Get the Type

You can get the data type of a variable with the type() function.

x = 5
y = "John"
print(type(x))
print(type(y)) 

### Variable Names
A variable can have a short name (like x and y) or a more descriptive name (age, carname, total_volume). Rules for Python variables:

  - A variable name must start with a letter or the underscore - character
  - A variable name cannot start with a number
  - A variable name can only contain alpha-numeric characters and underscores (A-z, 0-9, and _ )
  - Variable names are case-sensitive (age, Age and AGE are three different variables)

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

x=3
y=5.7
lang_name="python"
print("{} {} {}".format(x,y,lang_name))
print("{} \n{} \n{}".format(x,y,lang_name))
print(f"xa values is: {x} the y values is:{y} \nthe lang  is:  {lang_name}")

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

  -  List is a collection which is ordered and changeable. Allows duplicate members. []
  - Tuple is a collection which is ordered and unchangeable. Allows duplicate members. ()
  - Set is a collection which is unordered, unchangeable*, and unindexed. No duplicate members. {}
  - Dictionary is a collection which is ordered** and changeable. No duplicate members. {}with key value pair

*Set items are unchangeable, but you can remove and/or add items whenever you like.

**As of Python version 3.7, dictionaries are ordered. In Python 3.6 and earlier, dictionaries are unordered.

When choosing a collection type, it is useful to understand the properties of that type. Choosing the right type for a particular data set could mean retention of meaning, and, it could mean an increase in efficiency or security.


## List []

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

Python has a set of built-in methods that you can use on lists/arrays.

|Method	|Description|
|-|-|
append()	|Adds an element at the end of the list
clear()	|Removes all the elements from the list
copy()	|Returns a copy of the list
count()	|Returns the number of elements with the specified value
extend()	|Add the elements of a list (or any iterable), to the end of the current list
index()	|Returns the index of the first element with the specified value
insert()	|Adds an element at the specified position mylist.insert(posicion,valor a insertar)
pop()	|Removes the element at the specified position mylist.pop(posicion) si no se pone posicion elimina ultimo
remove()	|Removes the first item with the specified value
reverse()	|Reverses the order of the list
sort()	|Sorts the list|

### TUPLE ()

Tuple

Tuples are used to store multiple items in a single variable.

A tuple is a collection which is ordered and unchangeable.

Tuples are written with round brackets.
Example

Create a Tuple:
thistuple = ("apple", "banana", "cherry")
print(thistuple)

|Method|	Description|
|-|-|
|count()	|Returns the number of times a specified value occurs in a tuple
|index()	|Searches the tuple for a specified value and returns the position of where it was found

### SET {}
 
Sets are used to store multiple items in a single variable.

Set is one of 4 built-in data types in Python used to store collections of data, the other 3 are List, Tuple, and Dictionary, all with different qualities and usage.

A set is a collection which is unordered, unchangeable*, and unindexed.

* Note: Set items are unchangeable, but you can remove items and add new items.

Sets are written with curly brackets.
Example

Create a Set:
thisset = {"apple", "banana", "cherry"}
print(thisset) 

Method|	Description|
|-|-|
add()|	Adds an element to the set
clear()	|Removes all the elements from the set
copy()|	Returns a copy of the set
difference()|	Returns a set containing the difference between two or more sets
difference_update()|	Removes the items in this set that are also included in another, specified set
discard()|	Remove the specified item
intersection()|	Returns a set, that is the intersection of two or more sets
intersection_update()|	Removes the items in this set that are not present in other, specified set(s)
isdisjoint()|	Returns whether two sets have a intersection or not
issubset()|	Returns whether another set contains this set or not
issuperset()|	Returns whether this set contains another set or not
pop()|	Removes an element from the set
remove()|	Removes the specified element
symmetric_difference()|	Returns a set with the symmetric differences of two sets
symmetric_difference_update()	|inserts the symmetric differences from this set and another
union()|	Return a set containing the union of sets
update()|	Update the set with another set, or any other iterable

### Dictionary {} key-value

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

Method	|Description|
|-|-|
clear()	|Removes all the elements from the dictionary
copy()|	Returns a copy of the dictionary
fromkeys()|	Returns a dictionary with the specified keys and value
get()|	Returns the value of the specified key
items()	|Returns a list containing a tuple for each key value pair
keys()|	Returns a list containing the dictionary's keys
pop()	|Removes the element with the specified key
popitem()|	Removes the last inserted key-value pair
setdefault()|	Returns the value of the specified key. If the key does not exist: insert the key, with the specified value
update()|	Updates the dictionary with the specified key-value pairs
values()|	Returns a list of all the values in the dictionary

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
````
a = 33
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")
  ````

In this example a is equal to b, so the first condition is not true, but the elif condition is true, so we print to screen that "a and b are equal".

Else

The else keyword catches anything which isn't caught by the preceding conditions.
Example
````
a = 200
b = 33
if b > a:
  print("b is greater than a")
elif a == b:
  print("a and b are equal")
else:
  print("a is greater than b")
````


Example

````
num=eval(input("ingrese un numero del 1 al 3: "))

num_word={1:'uno', 2:'dos',3:'tres'}
if num in [1,2,3]:
  print(num_word.get(num))
else:
  print("numero por fuera del rango")

````

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

````
usr_str=input("ingrese palabra: ")
index=0
for letter in usr_str:
    print(f'{letter} --> {index}')
    index=index+1
````
FIND ALL FILES IN A DIRECTORY WITH REQUEIRED EXTENSION
````
#!/usr/local/bin/python3
import os
req_path=input("Enter your directory path: ")
#req_ex=input("Enter the required files extention .py/.sh/.log/.txt: ")

if os.path.isfile(req_path):
  print(f"The given path {req_path} is a file. Please pass only directory path")
else:
  all_f_ds=os.listdir(req_path)
  if len(all_f_ds)==0:
     print(f"The given path is {req_path} an empty path")
  else:
     req_ex=input("Enter the required files extention .py/.sh/.log/.txt: ")
     req_files=[]
     for each_f in all_f_ds:
        if each_f.endswith(req_ex):
           req_files.append(each_f)
     if len(req_files)==0:
        print(f"There are no {req_ex} files in the logcation of {req_path}")
     else:
        print(f"There are {len(req_files)} files in the location of {req_path} with an extention of {req_ex}")
        print(f"So, the files are: {req_files}")
````

### The break Statement

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

  ### the continue statement

The continue keyword is used to end the current iteration in a for loop (or a while loop), and continues to the next iteration.

  ### the pass statemenet

The pass statement is used as a placeholder for future code.

When the pass statement is executed, nothing happens, but you avoid getting an error when empty code is not allowed.

Empty code is not allowed in loops, function definitions, class definitions, or in if statements.

##  Python Functions

A function is a block of code which only runs when it is called.

You can pass data, known as parameters, into a function.

A function can return data as a result.

### Creating a Function

In Python a function is defined using the def keyword:
Example
```
def my_function():
  print("Hello from a function")`
 ```

### Calling a Function

To call a function, use the function name followed by parenthesis:

Example
````
def my_function():
  print("Hello from a function")

my_function()
````

 Exmaple function in ptyhon to clear screen and list of directories in windows or linux
```
import os
import time
import platform
def mycode(cmd1,cmd2):
	print("Please wait. Cleaning the screen....")
	time.sleep(2)
	os.system(cmd1)
	print("Please wait finding the list of dir and files")
	time.sleep(2)
	os.system(cmd2)
if platform.system()=="Windows":
	mycode("cls","dir")
else:
	mycode('clear','ls -lrt')
```

### Arguments

Information can be passed into functions as arguments.

Arguments are specified after the function name, inside the parentheses. You can add as many arguments as you want, just separate them with a comma.

The following example has a function with one argument (fname). When the function is called, we pass along a first name, which is used inside the function to print the full name:
Example
```
def my_function(fname):
  print(fname + " Refsnes")

my_function("Emil")
my_function("Tobias")
my_function("Linus")
```
Arguments are often shortened to args in Python documentations.
Parameters or Arguments?

The terms parameter and argument can be used for the same thing: information that are passed into a function.

From a function's perspective:

A parameter is the variable listed inside the parentheses in the function definition.

An argument is the value that is sent to the function when it is called.


### Number of Arguments

By default, a function must be called with the correct number of arguments. Meaning that if your function expects 2 arguments, you have to call the function with 2 arguments, not more, and not less.
Example

This function expects 2 arguments, and gets 2 arguments:

```
def my_function(fname, lname):
  print(fname + " " + lname)

my_function("Emil", "Refsnes")

```
If you try to call the function with 1 or 3 arguments, you will get an error:
Example

This function expects 2 arguments, but gets only 1:
```
def my_function(fname, lname):
  print(fname + " " + lname)

my_function("Emil")
```
### Arbitrary Arguments, *args

If you do not know how many arguments that will be passed into your function, add a * before the parameter name in the function definition.

This way the function will receive a tuple of arguments, and can access the items accordingly:
Example

If the number of arguments is unknown, add a * before the parameter name:
```
def my_function(*kids):
  print("The youngest child is " + kids[2])

my_function("Emil", "Tobias", "Linus")
```
Arbitrary Arguments are often shortened to *args in Python documentations.

### Keyword Arguments

You can also send arguments with the key = value syntax.

This way the order of the arguments does not matter.
Example
```
def my_function(child3, child2, child1):
  print("The youngest child is " + child3)

my_function(child1 = "Emil", child2 = "Tobias", child3 = "Linus")
```
The phrase Keyword Arguments are often shortened to kwargs in Python documentations.

### Arbitrary Keyword Arguments, **kwargs

If you do not know how many keyword arguments that will be passed into your function, add two asterisk: ** before the parameter name in the function definition.

This way the function will receive a dictionary of arguments, and can access the items accordingly:
Example

If the number of keyword arguments is unknown, add a double ** before the parameter name:
```
def my_function(**kid):
  print("His last name is " + kid["lname"])

my_function(fname = "Tobias", lname = "Refsnes")
```

Arbitrary Kword Arguments are often shortened to **kwargs in Python documentations.

### Default Parameter Value

The following example shows how to use a default parameter value.

If we call the function without argument, it uses the default value:
Example
```
def my_function(country = "Norway"):
  print("I am from " + country)

my_function("Sweden")
my_function("India")
my_function()
my_function("Brazil")
```
### Passing a List as an Argument

You can send any data types of argument to a function (string, number, list, dictionary etc.), and it will be treated as the same data type inside the function.

E.g. if you send a List as an argument, it will still be a List when it reaches the function:
Example
```
def my_function(food):
  for x in food:
    print(x)

fruits = ["apple", "banana", "cherry"]

my_function(fruits)
```

### Return Values

To let a function return a value, use the return statement:
Example
```
def my_function(x):
  return 5 * x

print(my_function(3))
print(my_function(5))
print(my_function(9))
```

### The pass Statement

function definitions cannot be empty, but if you for some reason have a function definition with no content, put in the pass statement to avoid getting an error.
Example
```
def myfunction():
  pass
```
### Recursion

Python also accepts function recursion, which means a defined function can call itself.

Recursion is a common mathematical and programming concept. It means that a function calls itself. This has the benefit of meaning that you can loop through data to reach a result.

The developer should be very careful with recursion as it can be quite easy to slip into writing a function which never terminates, or one that uses excess amounts of memory or processor power. However, when written correctly recursion can be a very efficient and mathematically-elegant approach to programming.

In this example, tri_recursion() is a function that we have defined to call itself ("recurse"). We use the k variable as the data, which decrements (-1) every time we recurse. The recursion ends when the condition is not greater than 0 (i.e. when it is 0).

To a new developer it can take some time to work out how exactly this works, best way to find out is by testing and modifying it.
Example

Recursion Example
```
def tri_recursion(k):
  if(k > 0):
    result = k + tri_recursion(k - 1)
    print(result)
  else:
    result = 0
  return result

print("\n\nRecursion Example Results")
tri_recursion(6)
````

### How to use \_\_name__
```
if __name__="__main__"
````

```
#!/usr/local/bin/python3
import os

def main():
  req_path=input("Enter path to change working dir: ")
  print("The current working dir is: ",os.getcwd())
  try:
    os.chdir(req_path)
    print("Now your new working dir is: ",os.getcwd())
  except FileNotFoundError:
    print("Given path is not a valid path. So cant change working directory")
  except NotADirectoryError:
    print("Given path is a file path. So cant change working directory")
  except PermissionError:
    print("Sorry you dont have access for the given path. So cant chagne working directory")
  except Exception as e:
    print(e)
  return None


if __name__=="__main__":
   main()

```

## Operation with String

- word="Python"
- print(word)
- print(word[0]) print first character in the string
- print(word[-1]) print las character in the string
- print(word[2:5]) print range 2 to 5 
- print(word[0:]) print range 0 to end 
- print(word[:5]) print range 0 to 5

word_len=len(word) lenght of the word

- my_string="Python Scripting"
- print(my_string.lower())
- print(my_string.upper())
- print(my_string.swapcase())
- print(my_string.title()) start letters was capitalize
- print(my_string.capitalize()) first letter capitalize
- print(my_string.casefold()) lower letters in a string
- print(my_string.starswith('p')) boolean result
- print(my_string.endswith('g')) boolean result
- print(my_string.islower()) boolean result
- print(my_string.isupper()) boolean result
- x="python"
- y="-".join (x)
- print(y)   p-y-t-h-o-n
- print(x.center(20)) In 20 spaces center the words in x
- prin(x.zfill(10)) llena con ceros hasta completar los 10 caracteres 0000python
- print(x.strip()) remove space left and right end and final
-  print(x.strip('n')) remove if letter in the end or begin
- x= "python is easy"
x.split() the result is ['python','is','easy']
- x.split('is)  ['python','easy']
- x.count('is') cuenta cuantas veces esta la pabara o letra esta en un string
- x.index('p') ubicacion de una letra la primera que encuentre
- x.index('p',1) la letra p saltando la posicion 0 si no encuentra la letra o palabra sale error
- x.find('p') trae la posicion de la primer p que encuentre si sale -1 es que no encontro la letra o palabra


## Requirements File

A requirements file is a list of all of a project’s dependencies. This includes the dependencies needed by the dependencies. It also contains the specific version of each dependency, specified with a double equals sign (==).

pip freeze will list the current projects dependencies to stdout.

This shell command will export this as a file named requirements.txt:

````
$ pip freeze > requirements.txt
````
Once you’ve got your requirements file, you can head over to a different computer or new virtual environment and run the following:
````
$ pip install -r requirements.txt
````

That’s assuming you are working in the directory containing requirements.txt. This tells pip to install the specific versions of all the dependencies listed.

By modifying the requirements file to use >= instead of ==, you can tell pip to install the latest stable version of the dependency, with the version specified acting as a minimum. This line would tell pip to install the latest version of requests, but never version 2.23.0: requests>=2.22.0, != 2.23.0.

To upgrade your installed packages, run the following:
````
$ pip install --upgrade -r requirements.txt
````

## Operator of Python

### Arithmetic
Assignment operators are used to assign values to variables:

Operator|	Example	|Same As	|
|-|-|-|
=|	x = 5|	x = 5	
+=|	x += 3|	x = x + 3	
-=|	x -= 3|	x = x - 3	
*=|	x *= 3|	x = x * 3	
/=|	x /= 3|	x = x / 3	
%=|	x %= 3|	x = x % 3	
\//=|	x //= 3|	x = x // 3	
**=|	x **= 3	|x = x ** 3	
&=|	x &= 3|	x = x & 3	
\|=|	x \|= 3|	x = x \| 3	
^=|	x ^= 3|	x = x ^ 3	
|>>=|	x >>= 3	|x = x >> 3	
|<<=|	x <<= 3|	x = x << 3

### Comparison

Comparison operators are used to compare two values:

|Operator	|Name	|Example|
|-|-|-|
==	|Equal|	x == y	
!=	|Not equal|	x != y	
|>	|Greater than|	x > y	
|<	|Less than|	x < y	
|>=	|Greater than or equal to|	x >= y	
|<=	|Less than or equal to	x| <= y

### Identity and memebership 
- Python Identity Operators
Identity operators are used to compare the objects, not if they are equal, but if they are actually the same object, with the same memory location:

|Operator|	Description|	Example	|
|-|-|-|
is |	Returns True if both variables are the same object|	x is y	
is not|	Returns True if both variables are not the same object|	x is not y	

- Python Membership Operators
Membership operators are used to test if a sequence is presented in an object:

Operator|	Description|	Example|
|-|-|-|
in 	|Returns True if a sequence with the specified value is present in the object|	x in y	
not in|	Returns True if a sequence with the specified value is not present in the object|	x not in y

### Logical
Logical operators are used to combine conditional statements:

Operator	|Description	|Example|
|-|-|-|
and| 	Returns True if both statements are true	|x < 5 and  x < 10	
or|	Returns True if one of the statements is true|	x < 5 or x < 4	
not|	Reverse the result, returns False if the result is true	| not(x < 5 and x < 10)

### Python Bitwise Operators
Bitwise operators are used to compare (binary) numbers:

Operator|	Name	|Description|
|-|-|-|
& |	AND	|Sets each bit to 1 if both bits are 1
|\||	OR|	Sets each bit to 1 if one of two bits is 1
 ^|	XOR|	Sets each bit to 1 if only one of two bits is 1
~ |	NOT|	Inverts all the bits
<<|	Zero fill left shift|	Shift left by pushing zeros in from the right and let the leftmost bits fall off
|>>|	Signed right shift|	Shift right by pushing copies of the leftmost bit in from the left, and let the rightmost bits fall off

## Switch Case in Python (Replacement)

- Method 1:  Switch Case implement in Python using Dictionary Mapping

````
# Function to convert number into string
# Switcher is dictionary data type here
def numbers_to_strings(argument):
    switcher = {
        0: "zero",
        1: "one",
        2: "two",
    }
 
    # get() method of dictionary data type returns
    # value of passed argument if it is present
    # in dictionary otherwise second argument will
    # be assigned as default value of passed argument
    return switcher.get(argument, "nothing")
 
# Driver program
if __name__ == "__main__":
    argument=0
    print (numbers_to_strings(argument))
````

- Method 2: Switch Case implement in Python using if-else
 ````
 bike = 'Yamaha'
 
if fruit == 'Hero':
    print("letter is Hero")
 
elif fruit == "Suzuki":
    print("letter is Suzuki")
 
elif fruit == "Yamaha":
    print("fruit is Yamaha")
 
else:
    print("Please choose correct answer")
 ````

- Method 3: Switch Case implement in Python using Class

````
class Python_Switch:
    def day(self, month):
 
        default = "Incorrect day"
 
        return getattr(self, 'case_' + str(month), lambda: default)()
 
    def case_1(self):
        return "Jan"
 
    def case_2(self):
        return "Feb"
 
    def case_3(self):
        return "Mar"
 
 
my_switch = Python_Switch()
 
print(my_switch.day(1))
 
print(my_switch.day(3))
````

- Switch Case in Python

In Python 3.10 and after that, Python will support this by using match in place of switch:

````

def number_to_string(argument):
    match argument:
        case 0:
            return "zero"
        case 1:
            return "one"
        case 2:
            return "two"
        case default:
            return "something"
 
 
if __name__ = "__main__":
    argument = 0
    number_to_string(argument)
````

## Module in Python

A module is a file containing Python definitions and statements. That means, module contain python funciton, classes and variables

from math import *
print(pi)

from math import pi
print(pi)

import math
print(math.pi)

import math as m
print(m.pi)

import platform,math,sys,os,subprocess

- PLATFORM MODULE

Is used to acces the underlying platform's data such as hardware, operating system and interpreter version info

import platform
print(f"el sistema operativo es: {platform.system()} os")
print (f'Python version es {platform.python_version()}')

- GETPASS MODULE

  - getpass() prompts the user for a password without echoing. The getpass module 
  provides a secure way to handle the password prompts where programs interact with 
  the users via the terminal.
  ````
  import getpass
  db_pass=getpass.getpass()
  print(f"la contraseña es : {db_pass}")
  ````


    - getuser() function displays the login name of the user. This function checks the 
  environment variables LOGNAME, USER, LNAME and USERNAME, in order, and returns 
  the value of the first non-empty string. 

- SYS MODULE

is used to work with python runtime environment
    
- sys.exit() para salir de python

- sys.argv returns a list of command line arguments passed to python script, the args be strings, the first element in the list is de script name

````
  import sys

import sys
if len(sys.argv) !=3:
    print(f'{sys.argv[0]} <your require string> <lower|upper|title>')
    sys.exit()

usr_strg=sys.argv[1]
usr_action=sys.argv[2]

if usr_action=='lower':
  print(usr_strg.lower())
elif usr_action=='upper':
  print(usr_strg.upper())
elif usr_action=='title':
  print(usr_strg.title())
else:
  print("escoga una opcion adecuada")

````

- OS MODULE

this module is used to work/interact with operating system to automate many more tasks like creating directoy, removing directory, identifying current directory and many more

os.sep separador del sistema operativo \ windows / linux para windows usa \\\\

|||
|-|-|
os.getcwd()| obtener el directorio actual
os.chdir(path)| cambiar directorio
os.listdir()| listar directorios y archivos
os.mkdir(nombre_archivo)| crear archivos o directorios
os.makedirs(path)| recursive directory creation function
os.remove(path)|
os.removedirs(path)| remove directories recursively
os.rmdir(path)|
os.environ| variables environment
os.getuid()| user id
os.getgid()| group id
os.getpid()| proccess id


  - os path

os.path.sep separador de las rutas del sistema operativo
os.path.basename(path) 
os .path dirname(path)

example home/user/test.py  basename test.py, dirname home/user

os.path.join(path1,path2)
os.path.split(path) is used to split the path into a pair head and tail
os.path.getsize(path) tamaño en bytes
os.path.exists(path) 
os.pat.isfile(path)
os.path.isdir(path)
os.path.islink(path)

os.system(comandos del sistema) example

os.system("ls") or os.system("dir")

````
import os
import platform
if platform.system()=="Windows":
    os.system("cls")
else:
    os.system("clear")
````

os.walk(path) used to generate directory and file names ina a directory tree by walking
 list(os.walk(path)) devuelve como respuesta una lista de tuplas con el primer argumento nombre del path, segundo directorios en ese path y el tercero files en ese path, si encuentra directorios arma otrsa tuplas

 ````
import os
import string
import platform
req_file=input("Enter your file name to search: ")

if platform.system()=="Windows":
	pd_names=string.ascii_uppercase
	vd_names=[]
	for each_drive in pd_names:
		if os.path.exists(each_drive+":\\"):
			#print(each_drive)
			vd_names.append(each_drive+":\\")
	print(vd_names)
	for each_drive in vd_names:
		for r,d,f in os.walk(each_drive):
			for each_f in f:
				if each_f==req_file:
					print(os.path.join(r,each_f))
else:
	for r,d,f in os.walk("/"):
		for each_file in f:
			if each_file==req_file:
				print(os.path.join(r,each_file))

 ````

Range()
 - built in function
 - generate integer as list
- syntax: range(start,stop,step)
  3 arguments by default start=0, step=1
the final value is stop-1
  print(list(range(5))) = [0,1,2,3,4]

### Data module

python built in or default module and used to work with dates and times

````
import datetime
print(datatime.datetime.today())
print(datatime.datatime.now().year)
print(datatime.datatime.now().month)
print(datatime.datatime.now().day)
print(datatime.datatime.now().hour)
print(datatime.datatime.now().minute)
print(datatime.datatime.now().strftime("%y-%m-%d"))
print(datatime.datatime.now().strftime("%Y-%m-%d"))

strftime.org pagina de formateo de horas en string

import datetime
import pytz
req_time=pyts.timezone("Asia/Kolkata")
print(datatime.datatime.now(req_time) ##Hora y fecha lugar especifico

````
Eliminar archvio que tengan mas de cierta cantidad de dias
````
import os
import sys
import datetime
req_path=input("Enter your path: ")
age=3
if not os.path.exists(req_path):
   print("Please provide valid path ")
   sys.exit(1)
if os.path.isfile(req_path):
   print("Please provide directory path ")
   sys.exit(2)
today=datetime.datetime.now()
for each_file in os.listdir(req_path):
   each_file_path=os.path.join(req_path,each_file)
   if os.path.isfile(each_file_path):
      file_cre_date=datetime.datetime.fromtimestamp(os.path.getctime(each_file_path))
      #print(dir(today-file_cre_date))
      dif_days=(today-file_cre_date).days
      if dif_days > age:
         print(each_file_path,dif_days)
````

## Subprocess module 

used to execute operating system commands

import subprocess
sp=subprocess.Popen(cmd,shell=True/False,stdout=subprocess.PIPE,stderr=subprocess.PIPE,universal_newlines=True)
rc=sp.wait()
out,err=sp.communicate()
print(f'OUTPUT IS: {out}')
print(f'Error is: {err}')
==================================>
if shell=True then your cmd is a string (as your os command)
if shell=False then your cmd is a list

Note: shell=False dont work on your os environment variables
      
ex: cmd="ls -lrt" ==>shell=True
    shell=False ==> cmd="ls -lrt".split()  or ['ls','-lrt']
 
shell=True always on windows

cmd is a string

## Working with text files

Open  --> w write mode
      -->  a append mode
      -->    r read mode

````
'''
fo=open('newdemo.txt','w')
#print(fo.mode)
#print(fo.readable())
#print(fo.writable())
fo.close()
'''
'''

fo=open("random.txt",'w')
fo.write("This is a first line\n")
fo.write("This is a second line\n")
fo.write("This is a third line")
fo.close()
'''
'''
my_content=['This is using loop-iteratioin-1','This is using loop-iterantion-2','This is using loop-iteratioin-3']

fo=open("with_loop.txt",'a')

for each_line in my_content:
	fo.write(each_line+"\n")
fo.close()
'''
'''

fo=open("with_loop.txt","r")
data=fo.read()
fo.close()

print(data)
'''
'''
fo=open("with_loop.txt","r")
print(fo.readline())
print(fo.readline())
fo.close()
'''

fo=open("with_loop.txt","r")
data=fo.readlines()
fo.close()
'''
for each in range(3):
	print(data[each])   #data[0], data[1],data[2]
'''
print(data[-1])

````

Copy content of a source file into a detination file

```
sfile=input("Enter your source file: ")
dfile=input("Enter your destination file: ")
sfo=open(sfile,'r')
content=sfo.read()
sfo.close()

dfo=open(dfile,'w')
dfo.write(content)
dfo.close()
```

### Working with CSV

read CSV files

```
import csv 
req_file="C:\\Users\\Automation\\Desktop\\hi\\new_info.csv"

fo=open(req_file,"r")
content=csv.reader(fo,delimiter="|")
for each in content:
	print(each)

fo.close()
```

Read only header of a csv file and finding the numbers of row in a csv file
```
import csv 
req_file="C:\\Users\\Automation\\Desktop\\hi\\new_info.csv"

fo=open(req_file,"r")
content=csv.reader(fo,delimiter="|")
#print(list(content))
#print(f'The header is:\n {list(content)[0]}')
#header=next(content)
#print("The header is: ",header)
print("The no of rows are: ",len(list(content))-1)
'''
for each in content:
	print(each)
'''
fo.close()
```

### Create CSV file

```
import csv
#req_file="C:\\Users\\Automation\\Desktop\\hi\\new_info.csv"
'''
fo=open(req_file,'r')
csv_reader=csv.reader(fo,delimiter="|")
for each_row in csv_reader:
	print(each_row)
fo.close()
'''
req_file="C:\\Users\\Automation\\Desktop\\hi\\demo.csv"
fo=open(req_file,'w',newline="")
csv_writer=csv.writer(fo,delimiter=",")
'''
csv_writer.writerow(['S_No',"Name",'Age'])
csv_writer.writerow([1,"John",23])
csv_writer.writerow([2,"Cliton",24])
'''
my_data=[['S_No',"Name",'Age'],[1,"John",23],[2,"Cliton",24]]
csv_writer.writerows(my_data)
fo.close()
```

### Working with JSON files

```
import json 
#Read a json file
'''
req_file="myjson.json"

fo=open(req_file,'r')
print(json.load(fo))

fo.close()
'''
#Write data(dictionary data) into a json file
my_dict={'Name':'Narendra','skills':['Python','shell','yaml','AWS']}

req_file="myinfo.json"

fo=open(req_file,'w')
json.dump(my_dict,fo,indent=4)

fo.close()
```
###  Exception Handling

When an error occurs, or exception as we call it, Python will normally stop and generate an error message.

These exceptions can be handled using the try statement:

```
try:
  print(x)
except:
  print("An exception occurred")
```

You can define as many exception blocks as you want, e.g. if you want to execute a special block of code for a special kind of error:
```
try:
  print(x)
except NameError:
  print("Variable x is not defined")
except:
  print("Something else went wrong")

  ```
  - Known Exceptions
    - NameError
    - TypeError
    - FileNotFoundError
    - ZeroDivisionError
    - MpduleNotFoundError

### Custom exception

we can create custom exceptions using:
- raise (used to raise an existing exceptions)
- assert (used to create an AssestionError)

```
'''

age=23


if age>30:
	print("Valid age")
else:
	raise ValueError("Age is less than 30")

'''
age=20

try:
	assert age>30
	print("Valid age")
except AssertionError:
	print("Raised with assert because age is lessthan 30")
except:
	print("Exception occured")
```

## Regular expression with re module


- a,X, p -> Ordinary characters that match themselves
- [abc] matches a or b or c
- [a-c] matches a or b or c
- [a-zA-Z0-9] mathes any letter from (a to z) or (A to Z) or (0 to 9)
- \w  matches any single letter , digit or underscore
- \W matches any character not part of \w
- \d Matches decimal digit 0-9
- . matches any single character except newline character
- \\. mathce with dot only
- [^abc] A negated or complemented character class. That is, it matches anything that is not enclosed in the brackets. 
- ^  beggining of input and star of the line in- case multiline string
- $  Matches the end of input.
- \b empty string at the beginning or end of a word
- \B empty string not at thhe beggining or end of a word
- \t, \n,\r mathes tab, newline, return respectively
- {2} exactly two times
- {2,4} 2,3 or 4 times
- {2,} two or more times
- \+ one or more
- \* 0 or more times
- ? once or none

### REGEX with flags


First, refer to the below table for available regex flags.

Flag|	long syntax	|Meaning|
|-|-|-|
re.A|	re.ASCII|	Perform ASCII-only matching instead of full Unicode matching
re.I|	re.IGNORECASE|	Perform case-insensitive matching
re.M|	re.MULTILINE|	This flag is used with metacharacter ^ (caret) and \$ (dollar).When this flag is specified, the metacharacter ^ matches the pattern at beginning of the string and each newline’s beginning (\\n). And the metacharacter $ matches pattern at the end of the string and the end of each new line (\\n)
re.S|	re.DOTALL|	Make the DOT (.) special character match any character at all, including a newline. Without this flag, DOT(.) will match anything except a newline
re.X	|re.VERBOSE|	Allow comment in the regex. This flag is useful to make regex more readable by allowing comments in the regex.
re.L|	re.LOCALE|	Perform case-insensitive matching dependent on the current locale. Use only with bytes patterns

``` 
text="""this is a string
this a secon line
This is third line
asdf this"""

my_pat=r'^this'
print(re.findall(my_pat,text,re.M|re.I))
```

### Search and match operstions from re module

search operation: It looks throughtout the entire string and returns the first match

match operations: It looks only in the first line

````
import re
text= "This is for python and ther are two major vers python2 and python3 in future python4"
pat=r'\bpython\d?\b'
#print(re.findall(pat,text))
match_ob=re.search(pat,text)
#print(match_ob)
if match_ob:
  print("match from our pattern: ",match_ob.group())
  print('Starting index: ',match_ob.start())
  print('ending index: ', match_ob.end()-1)
  print("lenght: ",match_ob.end()-match_ob.start())
else:
  print("Not match found")
````

### Find all and finiter 

findall list of result

finiter retur an object iterable

````
import re
my_str="This is python and we are having python2 and python3 version"
my_pat=r'\bpython[23]?\b'
#print(re.search(my_pat,my_str))
#print(len(re.findall(my_pat,my_str)))
print(re.findall(my_pat,my_str))

for each_ob in re.finditer(my_pat,my_str):
	print(f'The match is: {each_ob.group()} starting index: {each_ob.start()}, ending index {each_ob.end()-1}')
````

### Compile operation re Module

```
import re
my_str="This is about python. Python is easy to learn  and we have two major versions: python2 and python3 "

my_pat=r'\bPython[23]?\b'

#print(re.search(my_pat,my_str))
#print(re.findall(my_pat,my_str,flags=re.I))
#print(re.split(my_pat,my_str))


pat_ob=re.compile(my_pat,flags=re.I)
print(pat_ob)
print(pat_ob.search(my_str))
print(pat_ob.findall(my_str))


#re.findall(my_pat,my_str)===> re.complie(my_pat).findall(my_str)


```

## Parmiko module

Paramiko(used to work with remote servers)
you need ssh v2 installed 

- Paramiko module will create a SSH client and by using this it will connect to remote server and executes commands
- We can also tranfer files from the remote machine to the local or viceversa using paramiko
- two ways to connect with remote server:
  - using username and password
  - using username and criptographic key
- we connect to linux to (windows or linux) <-> windows to (linux or linux)

````
#!/bin/python
import paramiko
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
#ssh.connect(hostname='3.92.79.119',username='ec2-user',password='paramiko123',port=22)
ssh.connect(hostname='3.92.79.119',username='ec2-user',key_filename='/home/Automation/.ssh/id_rsa',port=22)
#stdin, stdout, stderr = ssh.exec_command('whoami')
#stdin, stdout, stderr = ssh.exec_command('uptime')
stdin, stdout, stderr = ssh.exec_command('free -m')
print("The output is: ")
print(stdout.readlines())


print("THe error is: ")
print(stderr.readlines())
ssh.close()

````
Transfer fiel from local service to remote server using paramiko

````
import paramiko
ssh = paramiko.SSHClient()
ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
ssh.connect(hostname='54.165.97.91',username='ec2-user',password='paramiko123',port=22)
sftp_client=ssh.open_sftp()

#sftp_client.get('/home/ec2-user/paramiko_download.txt','paramiko_downloaded_file.txt')
#sftp_client.chdir("/home/ec2-user")
#print(sftp_client.getcwd())
#sftp_client.get('demo.txt','C:\\Users\\Automation\\Desktop\\download_file.txt')
sftp_client.put("transfer_files.py",'/home/ec2-user/transfer_files.py')
sftp_client.close()
ssh.close()

````


## Shutil module

Python Sutil Module provide us a number of high-level operations on files and folders/directories like copy, move, remove and much more

````
#!/usr/local/bin/python3
import shutil
#copy', 'copy2', 'copyfile', 'copyfileobj', 'copymode', 'copystat', 'copytree'

#copyfile-->copy --> copy2
#src="/home/Automation/working_with_remote_server.py"
src="/home/Automation/shutil_part_1.py"
dest="/home/Automation/working_with_remote_server.py_bkp"
#shutil.copyfile(src,dest)
#shutil.copy(src,dest)   #same permissions for src and dest
#shutil.copy2(src,dest)   #same meta data for dest as well
#shutil.copymode(src,dest)
#shutil.copystat(src,dest)

#f1=open('xyz.txt','r')
#f2=open('pqr.txt','w')
#shutil.copyfileobj(f1,f2)

#src="/home/Automation/tomcat7"
#shutil.copytree(src,'/tmp/tomcat')

shutil.rmtree('/tmp/tomcat')

````



## OOPS python (Polymorphism,Encapsulation, Data Abstraction,Inheritance )

Class: is a template/blueprint to create object, is a combination of attributes and methods

```
class emp:
	count=0
	def get_name_age_salary(self,name,age,salary):
		self.name=name
		self.age=age 
		self.salary=salary
		self.increase_count_for_emp()
		#self.display_details()
		return None
	def increase_count_for_emp(self):
		emp.count=emp.count+1
		return None
	def display_details(self):
		print(f'The name is: {self.name}\nThe age is: {self.age}\nThe salary is: {self.salary}')
		return None

emp1=emp()
emp2=emp()

emp1.get_name_age_salary('John',34,45000)
#emp1.increase_count_for_emp()
emp2.get_name_age_salary('Cliton',25,54000)
#emp2.increase_count_for_emp()

print(emp.count)
```
Constructor: is a special method that is called by default whenever you create an object from a class

```
class Emp(object):
	def __init__(self,name,salary):
		self.name=name
		self.salary=salary
		return None
	def display(self):
		print(f"The name is: {self.name}\nThe salary is: {self.salary}")
		return None		


emp1=Emp('Ramu',56000)
emp2=Emp("Naren",90000)

emp1.display()
#emp2.display()
````


**Destructor** are called when an objects gets destroyed, in python destructors are not needed as much needed in C++ because python has a garbage collector

```
class Person(object):
	def __init__(self,name,age):
		print("an object has been created")
		self.name=name
		self.age=age		
		return None
	def __del__(self):
		print("object has been deleted")
		return None


per1=Person('Jhon',26)
```

### Polymorphism

allows us to define same methods in different classes. This process is also known as method Overriding

````
class Tomcat(object):
	def __init__(self,home,ver):
		self.home=home
		self.version=ver
		return None 
	def display(self):
		print("This is from tocmat class")
		print(self.home)
		print(self.version)
		return None 
class Apache(object):
	def __init__(self,home,ver):
		self.home=home
		self.version=ver
		return None 
	def display(self):
		print("This is from apache class")
		print(self.home)
		print(self.version)
		return None 

tom_ob=Tomcat('/home/tomcat9','7.6')
apa_ob=Apache("/etc/httpd",'2.4')

tom_ob.display()
apa_ob.display()

````

### Inheritance

is mechanism that allows us to create a new classs- known as child class - that is based upon an existing class- the parent class

````
class Tomcat(object):
	def __init__(self,home,ver):
		self.home=home
		self.version=ver
		return None 
	def display(self):
		print(self.home)
		print(self.version)
		return None 
class Apache(Tomcat):
	def __init__(self,home,ver):
		self.home=home
		self.version=ver
		return None 
tom_ob=Tomcat('/home/tomcat9','7.6')
apa_ob=Apache("/etc/httpd",'2.4')


tom_ob.display()
apa_ob.display()

````

### Encapsulation

Using OOP in python, we can restrict acces to m,ethods and variables. This prevent data from direct modification which is called encapsulation

```
class Person(object):
	def assing_name_and_age(self,name,age):
		self.name=name
		self.__age=age
		self.__display()
		return None
	def __display(self):
		print(self.name,self.__age)
		return None

per1=Person()
per1.assing_name_and_age('John',32)

#per1.__display()
#print(per1.name)
#print(per1.__age)

```