=begin
Object oriented programming (OOP) is at the core of Ruby, so even beginners need to know the basic OOP principles. OOP discussions tend to get abstract and I have made an effort to make this introduction concrete with examples.

What is the value of the variable x?

x = String.new("i wish i was surfing")

Answer:
"i wish i was surfing"
String is a class and classes are responsible for making "objects". "i wish i was surfing" is referred to as an object. "i wish i was surfing" is also referred to as an instance of the String class, which means that the String class made the "i wish i was surfing" object. We have been making String objects throughout these quizzes. The following two expressions are the same thing:

x = String.new("i wish i was surfing")
x = "i wish i was surfing"
=end
p String.new("i wish i was surfing") 
p "i wish i was surfing"
p String.new("i wish i was surfing") == "i wish i was surfing"

=begin
Make the following object: "i thought he said this wasn't going to be abstract..."

Answer:
String.new("i thought he said this wasn't going to be abstract...")
=end
p String.new("i thought he said this wasn't going to be abstract...")

=begin
What does this return?

"hi".methods()

Answer:
The methods() method returns an array of the methods that the object can use. The String class is built-in to Ruby and provides a lot of methods that are commonly used, so we don't need to define them ourselves.
=end
p "hi".methods()

=begin
What does this return?

"This is a sentence, kinda".split()

Answer:
["This", "is", "a", "sentence,", "kinda"]
=end
p "This is a sentence, kinda".split()

=begin
What does this code return?

Array.new()

Answer:
[]
Array.new() creates a new array object (the empty array). The empty array is an instance of the Array class, meaning it was created by the Array class. An instance of the Array class is also referred to as an array object or an object.
=end
p Array.new()

=begin
What does this code print?

my_array = Array.new()
my_array.push("nice")
my_array.push("hair")
puts my_array.inspect

Answer:
["nice", "hair"]
my_array is an array object and push() is a method that adds elements to an array object. Notice that the same syntax used to call methods for the String class is used here: object, followed by dot, followed by the method name.

Here is how to interpret this example, line-by-line: my_array = Array.new() # An new array object has been created as is assigned to the variable my_array

my_array.push("nice") # The push() method is called on the my_array object to add the String "nice" to the array

my_array.push("hair") 

puts my_array.inspect() # The inspect() method is called on the array object and it is printed
=end
my_array = Array.new()
my_array.push("nice")
my_array.push("hair")
puts my_array.inspect # equivalent to `p my_array`

=begin
So far, we have explored classes defined by the Ruby programming language, but we can also create our own classes.

Create an instance of the Animal class and assign it to the variable fido.

Answer:
fido = Animal.new()
To create an instance of the Animal class, we use the class name, followed by dot, followed by the new() method. fido is also referred to as an object or an animal object.
=end
class Animal
end
fido = Animal.new()

=begin
Create a Dog class with a speak() method.

Create an instance of the Dog class and assign it to the variable spot. Then call the speak() method on the spot dog object.

Answer:
spot = Dog.new()
puts spot.speak()
After the spot object is created, the speak() method can be called.
=end
class Dog
    def speak()
        "Guau!"
    end
end

spot = Dog.new()
puts spot.speak

=begin
Define a Calculator class with an add() class method. Demonstrate how the add() method can be called to add two numbers.

Answer:
spot = Dog.new()
puts spot.speak()
After the spot object is created, the speak() method can be called.
=end
class Calculator
    def self.add(a, b)
        a + b
    end
end
puts Calculator.add(14, 6)

=begin
Here is how to create a Lion class with a name instance variable and a method that returns the name.

Answer:
spot = Dog.new()
puts spot.speak()
After the spot object is created, the speak() method can be called.
=end

class Lion
    attr_reader :name
    def initialize(name)
        @name = name
    end
end

lion = Lion.new('Alex')
puts lion.name