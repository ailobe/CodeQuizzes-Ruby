=begin
Assign the variable x to the value 5.

Answer:
x = 5
x is called a variable and 5 is the value. x is called a variable because it can be reassigned to another value.
=end
x = 5

=begin
What is the datatype of "Matt"?

Answer:
"Matt" is a String. Strings are text that are surrounded by double or single quotes ("Matt" and 'Matt' are acceptable syntax).
=end
puts "Matt".class

=begin
Is x a string? (x = 5)

Answer:
x is a variable and is not a string. x is assigned to the value 5 and 5 is an Integer, not a String. Notice that variables are not surrounded with quotation marks.
=end
puts x.class

=begin
What does this expression evaluate to?
"YO" + "LO"

Answer:
"YOLO"
This is called string concatenation.
=end
puts "YO" + "LO"

=begin
What does this expression evaluate to?
"Cool".+("io")

Answer:
"Coolio"
This is another way to concatenate Strings. The previous example actually uses syntactic sugar (a deviation from formal syntax to enhance code readability) and this example uses the strict syntax.
=end
puts "Cool".+("io")

=begin
What does this expression evaluate to?
"bob" + 42

Answer:
This raises an error because a number (Integer to be precise) cannot be concatenated with a String.
=end
print "fixed: "
puts "bob" + 42.to_s

=begin
a = "Bat"
b = "woman"
What does this expression evaluate to?
a + b

Answer:
"Batwoman"
When variables are assigned to values, the variable can be used in place of the value.
=end
a = "Bat"
b = "woman"
puts a + b

=begin
What does this expression print?
my_name = "Miley"
p my_name

Answer:
"Miley"
When a p statement runs, it returns something very important. It gives information regarding the data type of the thing being given. This is why we p parts of the code we think are broken, rather than puts.
=end
my_name = "Miley"
p my_name

=begin
rapper = "Jaydakiss"
Get the first letter from the string "Jaydakiss".

Answer:
rapper[0]
Basically everything in computer science is 0-indexed, so the counting starts at zero, not at 1.
=end
rapper = "Jaydakiss"
puts rapper[0]

=begin
Get the first through 3rd elements from the "Jaydakiss" string.

Answer:
"Jaydakiss"[0..2]
=end
puts rapper[0,3]
puts rapper[0..2]

=begin
Get the last element from the "Jaydakiss" string.

Answer:
"Jaydakiss"[-1]
=end
puts rapper[-1]

=begin
Replace the "l" in the following string with "m":
word = "lace"

Answer:
word[0] = "m"
=end
word = "lace"
word[0] = "m"
puts word

=begin
Assign the variable my_dawg to the value "DMX"

Answer:
my_dawg = "DMX"
=end
my_dawg = "DMX"
puts my_dawg

=begin
What does the following expression evaluate to?
"Dead Poet" = fav_bar

Answer:
This raises an error. When variables are assigned, the variable must be on the left, follow by an equal sign, followed by the value.
=end
print "fixed: "
puts fav_bar = "Dead Poet"

=begin
What does the following expression print?
something = "cats"
crazy = something
puts crazy

Answer:
This will print "cats" because the variables something and crazy both point to the same value.
=end
something = "cats"
crazy = something
puts crazy

=begin
What does the following expression evaluate to?
3.0 / 2.0

Answer:
1.5
This outcome is 1.5 because we are performing division on Floating point numbers that have decimals.

3.0 / 2 and 3 / 2.0 also return 1.5.
=end
puts 3.0 / 2.0

=begin
What does the following expression evaluate to?
3 / 2

Answer:
1
This outcome is not 1.5 because we are performing Integer division (division between two Integers) and Integers do not have any decimals. Division between two integers always results in an integer.
=end
puts 3 / 2

=begin
What does the following expression evaluate to?
"i am not shouting".upcase()

Answer:
"I AM NOT SHOUTING"
This shows that Ruby has nifty methods that are built in to the String class. The syntax for using the built in methods is the value, followed by dot, followed by the method name.
=end
puts "i am not shouting".upcase()

=begin
Convert every letter of "YoLo BrAh" to lowercase.
nice = "YoLo BrAh"

Answer:
nice.downcase()
=end
nice = "YoLo BrAh"
puts nice.downcase()

=begin
Concatenate the following strings:
first = "Beautiful "
second = "face tattoo"

Answer:
first + second
# OR
first.+(second)
# OR
first.concat(second)
The +() and concat() methods do the same thing (they're not exactly the same, but very similar). Notice the similarity with the previous examples: there is a string, followed by a dot, followed by the method names with another string as an argument.
=end
first = "Beautiful "
second = "face tattoo"
puts first + second

=begin
Integers have useful built-in methods too. Convert the number 5 to the string "5".

Answer:
5.to_s
to_s stands for "to string"
=end
p 5.to_s

=begin
What is the problem with the following code?
my variable = "Mr. White"

Answer:
This will raise an error because variables cannot have spaces in them. Ruby convention is to combine multi-word variable names with an underscore.

my_variable = "Mr. White"
=end
print "fixed: "
puts my_variable = "Mr. White"

=begin
Update the code, so it can run successfully:
band = "Blink" + 182

Answer:
We cannot concatenate a String and an Integer. However, we can convert the Integer to a String first and then concatenate the values as two Strings.
band = "Blink" + 182.to_s
=end
puts band = "Blink" + 182.to_s