=begin
What does the following code print?

name = :crank
puts name.inspect()

Answer:
:crank
Words that are preceded with : are called symbols. Symbols are similar to strings, but symbols are immutable. The inspect() method returns a human readable representation of the object.
=end
name = :crank
puts name.inspect

=begin
What does the following code print?

puts "unicorn".reverse()

Answer:
"nrocinu"
reverse() is a method that lets all strings be reversed.
=end
puts "unicorn".reverse()

=begin
What does the following code print?

puts :unicorn.reverse()

Answer:
This raises an error because symbols don't have a method called reverse(). Since symbols don't have some of the capabilities of strings, they are more efficient to store in memory. It is appropriate to use symbols when the additional functionality that strings provide is not required.
=end

=begin
What does this code print?

["fat", "bat", "rat"].each do |word|
  puts word + "-land"
end

Answer:
"fat-land"
"bat-land"
"rat-land"
The each method iterates over every element of the array and executes the code block for every iteration. The code block in this example is { |word| puts word + "-land" }. |word| is the block variable and it changes each iteration to the respective word in the array. This does not all need to make sense now - just get used to the syntax as this pattern is used frequently in Ruby.
=end
["fat", "bat", "rat"].each { |word| puts word + "-land" }

=begin
What does this code print?

counter = 0
array = ["fat", "bat", "rat"]
while counter < array.length
  puts array[counter] + "-land"
  counter += 1
end

Answer:
"fat-land"
"bat-land"
"rat-land"
A while loop can be used in place of Ruby's built-in Array methods like each(), but the code is more verbose. In this example, a counter variable is defined to keep track of how many iterations have been run, so the program know when to exit the loop.
=end
counter = 0
array = ["fat", "bat", "rat"]
while counter < array.length
  puts array[counter] + "-land"
  counter += 1
end

=begin
What does the following code print?

array = ["snake", "rat", "cat", "dog"]
array.each do |animal|
  puts animal if animal[0] == "s"
end

Answer:
"snake"
This each loop iterates over every element of the array and prints the name of the animal if the name begins with a "s". It this array, only "snake" beings with an "s", so "snake" is the only animal name that is printed.
=end
array = ["snake", "rat", "cat", "dog"]
array.each do |animal|
  puts animal if animal[0] == "s"
end

=begin
What does the following code return?

[:a, :b, :c].include?(:a)

Answer:
true
[:a, :b, :c] is an array of symbols. The Array#include? method iterates over the array and checks if the element :a is in the array. Since the array [:a, :b, :c] includes the element :a, the method returns true.
=end
p [:a, :b, :c].include?(:a)

=begin
What does the following code return?

["roof", "top"].include?("bar")

Answer:
false
The ["roof", "top"] array does not include the word "bar", so the include? method returns false.
=end
p ["roof", "top"].include?("bar")

=begin
What does the following code return?

["Too", "Weird", "To", "Live,", "Too", "Rare", "To", "Die"].join(" ")

Answer:
"Too Weird To Live, Too Rare To Die"
The join() method converts all the elements of an array to a single string.
=end
p ["Too", "Weird", "To", "Live,", "Too", "Rare", "To", "Die"].join(" ")

=begin
What does the following code return?

["where's", "wallace", "at"].join("***")

Answer:
"where's***wallace***at"
The argument that is passed to the join() method is what shows up between every element of the array that is joined.
=end
p ["where's", "wallace", "at"].join("***")

=begin
What does the following code return?

[2, 4, 6, 8].map { |number| number ** 2 }

Answer:
[4, 16, 36, 64]
The map() method iterates though every element of an array and returns a new array. In this example, the new array contains the squared value of the old array.

Code blocks can be delimited with { } or do/end. Single line code blocks are typically delimited with { } and multiline code blocks are delimited with do/end.
=end
p [2, 4, 6, 8].map { |number| number ** 2 }

=begin
A hash is collection of key/value pairs and is a fundamental data structure in Ruby (arrays are also a fundamental Ruby data structure). This is an example of a hash that summarizes the Warty Newt.

warty_newt = { "type" => "Amphibian", "diet" => "Carnivore", "life_span" => "25 years" }
Identify the components of the warty_newt hash.

Answer:
The warty_newt hash has 3 key/value pairs: "type" => "Amphibian", "diet" => "Carnivore", "life_span" => "25 years"

The first key/value pair ("type" => "Amphibian") has a key of "type" and a value of "Amphibian". The key is alway on the left and the value is always on the right.

A "hash rocket" (=>) is used to separate the key and the value and the key/value pairs are separated from each other with commas.
=end
warty_newt = {
    "type" => "Amphibian",
    "diet" => "Carnivore",
    "life_span" => "25 years"
}

=begin
What does the following code return?

warty_newt.fetch("type")

Answer:
"Amphibian"
fetch() is a hash method that also returns the value that corresponds to the specified key.
=end
puts warty_newt.fetch("type")

=begin
What does the following code print?
warty_newt["weight"] = "0.3 ounces"
puts warty_newt

Answer:
{"type"=>"Amphibian", "diet"=>"Carnivore", "life_span"=>"25 years", "weight"=>"0.3 ounces"}
Notice that the the following key/value pair has been added to the end of the warty_newt hash: "weight"=>"0.3 ounces"
=end
warty_newt["weight"] = "0.3 ounces"
p warty_newt

=begin
Create a hash for a snowy_owl, a bird that is a carnivore and has a life span of 10 years.

Answer:
snowy_owl = { "type"=>"Bird", "diet"=>"Carnivore", "life_span"=>"10 years" }
=end
snowy_owl = {"type"=>"Bird", "diet"=>"Carnivore", "life_span"=>"10 years"}

=begin
What does the following code return?

snowy_owl = { "type"=>"Owl", "type" => "Bird", "diet"=>"Carnivore", "life_span"=>"10 years" }
puts snowy_owl

Answer:
{"type"=>"Bird", "diet"=>"Carnivore", "life_span"=>"10 years"}
Notice that the second key/value pair with the key "type" is included. Every key in a hash must be unique.
=end
snowy_owl = {
    "type"=>"Owl",
    "type" => "Bird",
    "diet"=>"Carnivore",
    "life_span"=>"10 years"
}
puts snowy_owl

=begin
What does the following code return?

snowy_owl = { "type"=>"Bird", "diet"=>"Carnivore", "life_span"=>"10 years" }
snowy_owl.keys()

Answer:
["type", "diet", "life_span"]
The keys() method for hashes returns an array of all the keys in the hash.
=end
p snowy_owl.keys()

=begin
What does the following code return?

snowy_owl = { "type"=>"Bird", "diet"=>"Carnivore", "life_span"=>"10 years" }
snowy_owl.values()

Answer:
["Bird", "Carnivore", "10 years"]
The values() method for hashes returns an array of all the values in the hash.
=end
snowy_owl = { "type"=>"Bird", "diet"=>"Carnivore", "life_span"=>"10 years" }
p snowy_owl.values()

=begin
What does the following code return?

snowy_owl = {
  "type"=>"Bird",
  "diet"=>"Carnivore",
  "life_span"=>"10 years"
}
snowy_owl.select do |key, value|
  key == "type"
end

Answer:
{"type"=>"Bird"}
The select() method is used to find the key/value pair with the key equal to "type".
=end
type = snowy_owl.select { |key, value| key == "type" }
p type

=begin
Make a hash that is similar to the snowy_owl hash, but make all of the keys symbols.

snowy_owl = { "type"=>"Bird", "diet"=>"Carnivore", "life_span"=>"10 years" }

Answer:
{ :type => "Bird", :diet => "Carnivore", :life_span => "10 years" }
It is common to use symbols as hash keys in Ruby.
=end
snowy_owl = {
    type: "Bird",
    diet: "Carnivore",
    life_span: "10 years"
}

=begin
result = []
first_names = ["Hamburglar", "Grimace", "Ronald"]
last_name = "McDonald"
Iterate through first_names and populate result with the first_names and last name (result should be ["Hamburglar McDonald", "Grimace McDonald", "Ronald McDonald"] after the iteration).

Answer:
first_names.each do |first_name|
  result.push(first_name + " " + last_name)
end
=end
result = []
first_names = ["Hamburglar", "Grimace", "Ronald"]
last_name = "McDonald"

first_names.each { |name| result << "#{name} #{last_name}" }
p result

=begin
personality_types = ["bad", "good", "great"]
Iterate through personality_types and construct this array:

["bad person", "good person", "great person"]

Answer:
personality_types.map { |type| type + " person" }
=end
personality_types = ["bad", "good", "great"]
p personality_types.map { |adj| "#{adj} person" }

=begin
Convert ["waters", "too", "polluted", "with", "germs"] to "waters too polluted with germs".

Answer:
["waters", "too", "polluted", "with", "germs"].join(" ")
=end
p ["waters", "too", "polluted", "with", "germs"].join(' ')

=begin
lebron = {:sport => "basketball", :birthplace => "Akron"}
Return the value corresponding to the key :sport in the lebron hash.

Answer:
lebron[:sport]
=end
lebron = {:sport => "basketball", :birthplace => "Akron"}
puts lebron[:sport]

=begin
Add the :high_school key to the lebron hash with the value "St. Vincent-St. Mary High School".

Answer:
lebron[:high_school] = "St. Vincent-St. Mary High School"
=end
lebron[:high_school] = "St. Vincent-St. Mary High School"
p lebron

=begin
Return an array of all the keys in the lebron hash.

Answer:
lebron.keys()
=end
p lebron.keys

=begin
Return an array of all the values in the lebron hash.

Answer:
lebron.values()
=end
p lebron.values