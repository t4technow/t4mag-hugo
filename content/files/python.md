
## pyc
Byte code of py file.


## init method 
-  `__init__`
- Control the initialization of an object. (Create an instance)

>**Note :**  to control the creation of an object we use the `__new__` method


## self keyword
- `self` acts like `this` keyword in other languages. (To refer the current instance of the class)


## Module
- A group of functions is a module


## Package
- A group of modules is a package


## Library
- A group of packages is called a library


## Itarable:
-  **Iterable** is an object, that one can iterate over. It generates an Iterator when passed to `iter()` method.


## Iterator
- **An iterator** is an object, which is used to iterate over an iterable object using the `__next__()` method.
- Iterators have the __next__() method, which returns the next item of the object.

> **Note:** Every iterator is also an iterable, but not every iterable is an iterator in Python.


## Interpreted Language

- Python is an interpreted language, which means **the source code of a Python program is converted into bytecode that is then executed by the Python virtual machine**.
- Executed line by line


## Dict/ List comprehension

- simple method to make a dict/list
- eg:
```python:List comprehension
list = [n for n in range(5)]

# creates list = [0, 1, 2, 3, 4]
```


## Generator

- In Python, a generator is a function that returns an iterator that produces a sequence of values when iterated over.
- Generators are useful when we want to produce a large sequence of values, but we don't want to store all of them in memory at once.

#### Create Python Generator

In Python, similar to defining a normal function, we can define a generator function using the `def` keyword, but instead of the `return` statement we use the `yield` statement.

`syntax:`
```python:
def generator_name(args):
	yield something
```

>**Note :**  When the generator function is called, it does not execute the function body immediately. Instead, it returns a generator object that can be iterated over to produce the values.

`example:`
```python:
def my_generator(n):

    # initialize counter
    value = 0

    # loop until counter is less than n
    while value < n:

        # produce the current value of the counter
        yield value

        # increment the counter
        value += 1

# iterate over the generator object produced by my_generator
for value in my_generator(3):

    # print each value produced by generator
    print(value)

```

## Decorator

- Give additional fuctionality to a fuction(Modify function behaviors)

`example:`
```python:
def decoratorFunction(func):
	def inner():
		print("Before function")
		func()
		print("After function")
	return inner

@decoratorFunction
def hello():
	print("Outside decorator ")

hello()
```

`output:`
```output:
Before function
Hello : 
After function
```


## Python Virtual Machine (PVM)

- It is the interpretor to run the pyc file.


## Magic methods

- Magic methods are special methods that starts and ends with `__`
- eg: `__init__` ,  `__add__` etc


## operator overloading

- The `+` operator acts as concantination operator on strings but as arithmetic operator on numeric datatype


## Shallow copy & deep copy

- when deep copying the new object is created with actual copy of an object
- `syntax`
```python:
import copy

a=[1,2,3]
b = copy.deepcopy(a)
```
- shallow copy passes the refence of the current objects rather than actual copy. Which means any change in the referrenced elements will be reflected in the copied object.
- but when a new item is added it will not be reflected as it does not have any reference in the copied object


## next method

- The `next()` function returns the next item in an iterator.
- You can add a default return value, to return if the iterable has reached to its end.
- `syntax:`
```python:
next(_iterable_, _default_)
```


## Dynamically typed

- There is no declaration of a variable, just an assignment statement.
- It doesn’t know about the type of the variable until the code is run.


## lambda functions

- Supports single line statements that returns some value.
- Good for performing short operations/data manipulations.
- Using lambda function can sometime reduce the readability of code.

`eg`
```python:
  
lambda_cube = lambda y: y*y*y

# this is equivalent to
# def cube(y):
#     return y*y*y
```


## if on variables

- in python, writing  `if var:`  has the same effect as writing  `if bool(var):`
- If the value is already a bool (valued True or False) the meaning is clear -- bool(var) returns the same value
- For integers (as in C) it's the same as var!=0
- for lists or dicts or strings, it's the same as len(var)!=0


## create an object
`syntax:`
```python:
obj_name = ClassName()
```


## Exception Handling

- The `try...except` block is used to handle exceptions in Python. Here's the syntax of `try...except` block:
```python:
try:
    # code that may cause exception
except:
    # code to run when exception occurs
```

`eg :-`
```python:
try:
    numerator = 10
    denominator = 0

    result = numerator/denominator

    print(result)
except:
    print("Error: Denominator cannot be 0.")

# Output: Error: Denominator cannot be 0. 
```


#### Catching Specific Exceptions in Python

- For each `try` block, there can be zero or more `except` blocks. Multiple `except` blocks allow us to handle each exception differently.
- The argument type of each `except` block indicates the type of exception that can be handled by it. For example,
```python:
try:
    
    even_numbers = [2,4,6,8]
    print(even_numbers[5])

except ZeroDivisionError:
    print("Denominator cannot be 0.")
    
except IndexError:
    print("Index Out of Bound.")

# Output: Index Out of Bound
```

Here, When the `IndexError` exception occurs in the `try` block,

-   The `ZeroDivisionError` exception is skipped.
-   The set of code inside the `IndexError` exception is executed.

- In Python, the `finally` block is always executed no matter whether there is an exception or not.


#### Defining Custom Exceptions

- In Python, we can define custom exceptions by creating a new class that is derived from the built-in `Exception` class.

- Here's the syntax to define custom exceptions,
```python:
class CustomError(Exception):
    ...
    pass

try:
   ...

except CustomError:
    ...
```

>**Note:**
>
> -  When we are developing a large Python program, it is a good practice to place all the user-defined exceptions that our program raises in a separate file.
>
> -   Many standard modules define their exceptions separately as `exceptions.py` or `errors.py` (generally but not always).


eg:
```python:
# define Python user-defined exceptions
class InvalidAgeException(Exception):
    "Raised when the input value is less than 18"
    pass

# you need to guess this number
number = 18

try:
    input_num = int(input("Enter a number: "))
    if input_num < number:
        raise InvalidAgeException
    else:
        print("Eligible to Vote")
        
except InvalidAgeException:
    print("Exception occurred: Invalid Age")
```



## Memory Management

- The programmer has to manually allocate memory before it can be used by the program and release it when the program no longer needs it. **In Python, memory management is automatic**! Python automatically handles the allocation and deallocation of memory with the help of Garbage Collector.

#### There are two parts of memory:
-   stack memory
-   heap memory

> The methods/method calls and the references are stored in **stack memory** and all the values objects are stored in a **private heap**.


#### Work of Stack Memory
The allocation happens on contiguous blocks of memory. We call it stack memory allocation because the allocation happens in the function call stack. The size of memory to be allocated is known to the compiler and whenever a function is called, its variables get memory allocated on the stack.


#### Work of Heap Memory
The memory is allocated during the execution of instructions written by programmers. Note that the name heap has nothing to do with the heap data structure. It is called heap because it is a pile of memory space available to programmers to allocated and de-allocate. The variables are needed outside of method or function calls or are shared within multiple functions globally are stored in Heap memory.


#### Garbage Collection
- Garbage collection is a process in which the interpreter frees up the memory when not in use to make it available for other objects.  
- Assume a case where no reference is pointing to an object in memory i.e. it is not in use so, the virtual machine has a garbage collector that automatically deletes that object from the heap memory


#### Reference Counting
Reference counting works by counting the number of times an object is referenced by other objects in the system. When references to an object are removed, the reference count for an object is decremented. When the reference count becomes zero, the object is deallocated.


## **Method Resolution Order (MRO)**

- Method Resolution Order(MRO) it denotes the way a programming language resolves a method or attribute.
- In python, method resolution order defines the order in which the base classes are searched when executing a method. First, the method or attribute is searched within a class and then it follows the order we specified while inheriting.
- While inheriting from another class, the interpreter needs a way to resolve the methods that are being called via an instance. Thus we need the method resolution order.


## Access specifiers

- Python uses ‘_’ symbol to determine the access control for a specific data member or a member function of a class.

A Class in Python has three types of access modifiers:

-   **Public Access Modifier**
-   **Protected Access Modifier**
-   **Private Access Modifier**


#### Public Access Modifier:
The members of a class that are declared public are easily accessible from any part of the program. All data members and member functions of a class are public by default.

#### Protected Access Modifier:
The members of a class that are declared protected are only accessible to a class derived from it. Data members of a class are declared protected by adding a single underscore ‘_’ symbol before the data member of that class. 

```python:
# super class

class Student:
     # protected data members
     _name = None
     _roll = None
     _branch = None

     # constructor
     def __init__(self, name, roll, branch): 
          self._name = name
          self._roll = roll
          self._branch = branch

     # protected member function  
     def _displayRollAndBranch(self):

          # accessing protected data members
          print("Roll: ", self._roll)

          print("Branch: ", self._branch)

# derived class
class Geek(Student):
       
       # constructor
       def __init__(self, name, roll, branch):
	       Student.__init__(self, name, roll, branch)

       # public member function
       def displayDetails(self):
			# accessing protected data members of super class

            print("Name: ", self._name)
            # accessing protected member functions of super class
            self._displayRollAndBranch()

# creating objects of the derived class`       
obj = Geek("R2J", 1706256, "Information Technology")

# calling public member functions of the class
obj.displayDetails()
```


output:
```
Name:  R2J
Roll:  1706256
Branch:  Information Technology
```

#### Private Access Modifier:
The members of a class that are declared private are accessible within the class only, private access modifier is the most secure access modifier. Data members of a class are declared private by adding a double underscore `__` symbol before the data member of that class. 

eg:-
```
# program to illustrate private access modifier in a class
class Geek:
	
	# private members
	__name = None
	__roll = None
	__branch = None

	# constructor
	def __init__(self, name, roll, branch):
		self.__name = name
		self.__roll = roll
		self.__branch = branch

	# private member function
	def __displayDetails(self):
		
		# accessing private data members
		print("Name: ", self.__name)
		print("Roll: ", self.__roll)
		print("Branch: ", self.__branch)
	
	# public member function
	def accessPrivateFunction(self):
			
		# accessing private member function
		self.__displayDetails()

# creating object
obj = Geek("R2J", 1706256, "Information Technology")

# calling public member function of the class
obj.accessPrivateFunction()

```

output:
```
Name:  R2J
Roll:  1706256
Branch:  Information Technology
```


## Constructors

Constructors are generally used for instantiating an object. The task of constructors is to initialize(assign values) to the data members of the class when an object of the class is created. In Python the `__init__()` method is called the constructor and is always called when an object is created.  

syntax:
```python:
def __init__(self):
    # body of the constructor
```


#### **Types of constructors :** 
-   **default constructor:** The default constructor is a simple constructor which doesn’t accept any arguments. Its definition has only one argument which is a reference to the instance being constructed.
eg:
```python:
class ClassName:

	# default constructor
	def __init__(self):
		self.name = "Name"

	# a method for printing data members
	def print_name(self):
		print(self.name)


# creating object of the class
obj = ClassName()

# calling the instance method using the object obj
obj.print_name()

```


-   **parameterized constructor:** constructor with parameters is known as parameterized constructor. The parameterized constructor takes its first argument as a reference to the instance being constructed known as self and the rest of the arguments are provided by the programmer.
eg:
```python:
class Addition:
	first = 0
	second = 0
	answer = 0

	# parameterized constructor
	def __init__(self, f, s):
		self.first = f
		self.second = s

	def display(self):
		print("First number = " + str(self.first))
		print("Second number = " + str(self.second))
		print("Addition of two numbers = " + str(self.answer))

	def calculate(self):
		self.answer = self.first + self.second


# creating object of the class
# this will invoke parameterized constructor
obj1 = Addition(1000, 2000)

# creating second object of same class
obj2 = Addition(10, 20)

# perform Addition on obj1
obj1.calculate()

# perform Addition on obj2
obj2.calculate()

# display result of obj1
obj1.display()

# display result of obj2
obj2.display()

```
