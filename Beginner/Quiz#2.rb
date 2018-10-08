=begin
my_array = ["matt", "phil"]  
my_array is an array with the values "matt" and "phil". Arrays are collections of values.

Create an array with the values 1 and 2.

Answer:
[1, 2]
Each value in the Array must be separated with a comma.
=end
p [1, 2]

=begin
Create an array with nothing inside it.

Answer:
[]
# OR
Array.new()
[] is called the empty array.
=end
p []
p Array.new()

=begin
Create an Array that contains the values "mike tyson", 89, and 9.7.

Answer:
["mike tyson", 89, 9.7]
This array contains a String, Integer and Floating point number.
=end
p [ "mike tyson", 89, 9.7]

=begin
Identify the components of the following expression:
students = ["mary", "kathy", "frank"]

Answer:
students is a variable that is assigned the array value ["mary", "kathy", "frank"]. The students array is composed of three different Strings.
=end
students = ["mary", "kathy", "frank"]
students.each { |i| puts i.class }

=begin
What does the following expression return:
["uno", "dos", "tres"].length()

Answer:
3
length() is a method that is available to all arrays and returns the number of elements in the array.
=end
puts ["uno", "dos", "tres"].length()

=begin
name = "clem"
age = 32
Is this array valid?
[name, age]

Answer:
Yes, variables can be used inside of Arrays.
=end
name = "clem"
age = 32
p [name, age]

=begin
lyric = ["laughter", "it's", "free"]
Get the first element of the lyric Array.
Get the last element of the lyric Array.

Answer:
lyric[0]
lyric[-1]
Arrays are zero-indexed so 0 gets the first element, 1 gets the second element, 2 gets the third element, etc. Negative numbers can be used to index starting from the end of the array.
=end
lyric = ["laughter", "it's", "free"]
puts lyric[0]
puts lyric[-1]

=begin
ruff = ["stop", "drop", "shut 'em down"]
Add the string "open up shop" to the end of the ruff Array.

Answer:
ruff << "open up shop"
# OR
ruff.<<("open up shop")
# OR
ruff.push("open up shop")
<<() and push() are build in methods to arrays and they follow the standard syntax: array, followed by dot, followed by whatever is being added to the array.
=end
ruff = ["stop", "drop", "shut 'em down"]
ruff << "open up shop"
p ruff

=begin
What does the following expression evaluate to?
5 == 5

Answer:
true
== is a boolean operator to compare if two values are the same. If two values are the same, == returns true, and if the two values are not the same, == returns false.
=end
p 5 == 5

=begin
What does the following expression evaluate to?
true = 6

Answer:
This raises an error because true is a special reserved keyword in Ruby and cannot be used as a variable. false is also a special reserved keyword.
=end
p true == 6

=begin
Demonstrate that "matt" is the same as "matt".

Answer:
"matt" == "matt"
This expression returns true because "matt" and "matt" are the same String.
=end
p "matt" == "matt"

=begin
What does the following expression evaluate to?
4 != 4

Answer:
false
!= is a boolean operator that stands for "does not equal". The statement "4 does not equal 4" is not true, so the expression returns false.
=end
p 4 != 4

=begin
What does the following expression evaluate to?
5 > 4

Answer:
true
> is the "greater than" operator. 5 is greater than 4, so the expression evaluates to true.
=end
p 5 > 4

=begin
What does the following expression print?

if 5 > 4
  puts "5 is greater than 4"
end

Answer:
Since 5 > 4 evaluates to true, the code inside the if block will be executed and "5 is greater than 4" will be printed. If 5 > 4 did not evaluate to true, then the code in the if block would not be executed.
=end
if 5 > 4
    puts "5 is greater than 4"
end

=begin
What does the following expression print?

if 5 < 4
  puts "5 is less than 4"
else
  puts "5 is not less than 4"
end

Answer:
"5 is not less than 4"
Since 5 < 4 is not true, the code inside the if block is not executed. The code inside the else clause is executed when the boolean condition (5 < 4) does not evaluate to true (aka when the boolean condition evaluates to false).
=end
if 5 < 4
    puts "5 is less than 4"
  else
    puts "5 is not less than 4"
end

=begin
What does the following expression print?

if "sam" == "cat"
  puts "sam equals cat"
elsif "matt" == "matt"
  puts "matt equals matt"
else
  puts "whatever"
end

Answer:
"matt equals matt"
The elsif keyword is used to add additional logical criteria to an if statement and this expression prints "matt equals matt". In this case, the boolean condition following the if statement ("sam" == "cat") evaluates to false, so the code inside the if block is not executed. However, the boolean condition following the elsif statement evaluates to true ("matt" == "matt"), so the code inside the elsif block is executed.
=end
if "sam" == "cat"
    puts "sam equals cat"
  elsif "matt" == "matt"
    puts "matt equals matt"
  else
    puts "whatever"
end

=begin
What does the following expression print?

if 5
  puts "Hello there"
end

Answer:
This expression prints "Hello there". This example is confusing because the value after if is the number 5, not a boolean condition. In Ruby, "truthy" and "falsey" values can be used in place of boolean conditions. Every value in Ruby is truthy, except nil and false, which are falsey.
=end
if 5
    puts "Hello there"
end

=begin
What does the following expression print?

if "bob"
  puts "bob is truthy"
else
  puts "bob is falsey"
end

Answer:
This expression prints "bob is truthy". Any value that is not nil or false is considered true in a boolean context, so "bob" is considered true. Therefore, the code in the if block is executed.
=end
if "bob"
    puts "bob is truthy"
  else
    puts "bob is falsey"
end

=begin
What does the following expression print?

if nil
  puts "nil is truthy"
else
  puts "nil is falsey"
end

Answer:
This expression prints "nil is falsey". nil is considered false in a boolean context, so the code in the else block is executed.
=end
if nil
    puts "nil is truthy"
  else
    puts "nil is falsey"
end

=begin
What does the following expression print?

puts "This syntax is cool" if true

Answer:
This expression prints "This syntax is cool" because true is considered true in a boolean context. This example has the same meaning, but is more concise than the typical syntax:

if true
  puts "This syntax is cool"
end
=end
puts "This syntax is cool" if true

=begin
What does the following expression print?

puts "Tall buildings" if false

Answer:
This expression prints nothing. The boolean condition is false, so the puts statement is never executed.
=end
puts "Tall buildings" if false

=begin
What is the value of x?

x = 5
x = x + 1

Answer:
x equals 6. x was originally 5, but x was reassigned to be 5 + 1 or 6.
=end
x = 5
x = x + 1
p x

=begin
What is the value of mode?

mode = "chill"
mode += "hippie"

Answer:
mode equals "chillhippie". The += notation is shorthand for the variable reassignment syntax we saw in the prior question. The following lines are equivalent:

mode += "hippie"
mode = mode + "hippie"
=end
mode = "chill"
mode += "hippie"
puts mode

=begin
What does the following code print?

counter = 0
while counter < 3
  puts "Went through the loop"
  counter = counter + 1
end

Answer:
"Went through the loop"
"Went through the loop"
"Went through the loop"
This is an example of a while loop. The variable counter is initially set to zero and the code inside the while loop is executed whenever the boolean condition (counter < 3) is true. For the first loop, the boolean condition is true (0 < 3), so the string "Went through the loop" is printed and the counter variable is incremented (counter variable points to value of 1 after first iteration). The boolean condition also evaluates to true for the second loop (1 < 3) and the third loop (2 < 3), but it evaluates to false for the fourth loop (3 < 3). When the boolean condition for a while loop evaluates to false, the loop is exited.
=end
counter = 0
while counter < 3
  puts "Went through the loop"
  counter = counter + 1
end

=begin
What does the following code print?

while 3 > 15
  puts "This is the end"
end

Answer:
This loop does not print anything because the boolean condition (3 > 15) never evaluates to true. Since the boolean condition never evaluates to true, the code inside the loop is never executed.
=end
while 3 > 15
    puts "This is the end"
end

=begin
What does the following code print?

while true
  puts "This is the song that never ends"
end

Answer:
This will print "This is the song that never ends" infinitely and will never stop until the program is forced to quit. The boolean condition is always true, so the loop is never exited.

To exit the loop, press control + C
=end

  