=begin
What does this code print?

x = "HELLO"
if true
  puts x
end

Answer:
"HELLO"
The variable x is defined outside the conditional and can be accessed inside the conditional.
=end
x = "HELLO"
if true
  puts x
end

=begin
What does this code print?

if true
  y = "Baaaaah"
end
puts y

Answer:
"Baaaaah"
The variable y is defined inside the conditional and can be accessed outside the conditional.
=end
if true
  y = "Braaaaah"
end
puts y

=begin
Identify the elements of this code:

def my_name()
  return("Zoo Lander")
end

Answer:
def` # a keyword in Ruby for defining methods

my_name() # the name of the method that is being defined

return("Zoo Lander") # the body of the method that is executed when the method is called

end # a keyword in Ruby for indicating the method definition is complete
=end
def my_name()
    return("Zoo Lander")
end
puts my_name

=begin
What is the difference between the code in the previous example and this code?

def my_name
  "Zoo Lander"
end

Answer:
This example uses implicit syntax and the previous example uses explicit syntax. This example does not have () after my_name and does not have an explicit return in the method body. Implicit syntax is great for experienced Ruby programmers because it saves typing, but is confusing for beginners. We will use explicit syntax for now - the transition to implicit syntax is very easy once you are more familiar with Ruby :)
=end
def my_name
    "Zoo Lander"
end
puts my_name

=begin
What does the following code return?

def add(x, y)
  return(x + y)
end

add(3, 5)

Answer:
8
The add method is supplied two arguments (3 and 5) and the add method returns the sum of these two arguments. The basic purpose of a method is to take inputs and return output.
=end
def add(x, y)
    return(x + y)
end
p add(3, 5)

=begin
What does the following code print?

y = 10
def add_one_to_variable(variable)
  variable += 1
  return(variable)
end

puts add_one_to_variable(y)

Answer:
11
The y variable is passed to an argument in the add_one_to_variable() method.
=end
y = 10
def add_one_to_variable(variable)
  variable += 1
  return(variable)
end

puts add_one_to_variable(y)

=begin
What does the following code print.

cool = "Beans"
def dinner_plans()
  puts cool
end

dinner_plans()

Answer:
This raises an error because the cool variable is defined outside the dinner_plans() method.
=end

=begin
What does the following code print?

def blah()
  my_var = "my_var has been defined"
end

puts my_var

Answer:
This code raises an error because the scope of my_var is local to the blah() method. In other words, the my_var variable can be used within the blah() method, but it cannot be used anywhere outside of the method.
=end

=begin
What does the following code print?

def cray()
  lyric = "Stuff is cray cray"
  puts lyric
end

cray()

Answer:
"Stuff is cray cray".
The lyric variable is defined in the cray() method and puts() can access the variable within the cray() method.
=end
def cray()
    lyric = "Stuff is cray cray"
    puts lyric
end
  
cray()

=begin
What does the following code print?

def first_name()
  return("Otto")
end

def last_name()
  return("Mation")
end

def full_name()
  first_name() + " " + last_name()
end

puts full_name()

Answer:
"Otto Mation"
When the full_name() method is run, it calls the first_name() method and concatenates the return value with " " and the value that is returned from the last_name() method. This example demonstrates that methods can call other methods.
=end
def first_name()
    return("Otto")
end
  
def last_name()
    return("Mation")
end
  
def full_name()
    first_name() + " " + last_name()
end
  
puts full_name()

=begin
What does the following code print?

def square_of_number(number)
  return(number * number)
end

def cube_of_number(number)
  return(number * square_of_number(number))
end

puts cube_of_number(2)

Answer:
8
The cube_of_number() method is passed an argument of 2 and this argument is also used as an argument for the square_of_number() method.
=end
def square_of_number(number)
    return(number * number)
end
  
def cube_of_number(number)
    return(number * square_of_number(number))
end
  
puts cube_of_number(2)

=begin
Define a method that multiplies two numbers together.

Answer:
def multiply(x, y)
  return(x * y)
end
=end
def multiply(a, b)
    a * b
end
puts multiply(2, 5)

=begin
Define a method called silly_check() that takes a number argument and returns "The number is less than 5" if the argument is less than 5 and "The number is greater than or equal to 5" otherwise.

Answer:
def silly_check(number)
  if number < 5
    return("The number is less than 5")
  else
    return("The number is greater than or equal to 5")
  end
end
=end
def silly_check(number)
    puts number < 5 ? "The number is less than 5" : "The number is greater than or equal to 5"
end
silly_check(4)
silly_check(5)

=begin
Define a method called funify() that takes an array as an argument and adds the word "fun" to the end of the array.

Answer:
def funify(array)
  return(array.push("fun"))
end

# Example usage:
my_array = ["blah monster"]
funify(my_array)
=end
def funify(arr)
    arr << "fun"
end
array = [1,2,3] 
funify(array)
p array

=begin
Define a method called more_fun() that replaces the first element of an array with the word "FUN FUN".

Answer:
def more_fun(array)
  array[0] = "FUN FUN"
  return(array)
end

# Example usage:
my_array = ["blah monster"]
more_fun(my_array)
=end
def more_fun(arr)
    arr[0] = "FUN FUN"
end
more_fun(array)
p array

=begin
Define a method called increment_variable() that takes a variables as an argument and adds one to it.

Answer:
def increment_variable(variable)
  return(variable + 1)
end

# Example usage:
x = 34
x = increment_variable(x)
puts x
=end
def increment_variable(var)
    return var + 1
end
variable = 10
puts increment_variable(variable)