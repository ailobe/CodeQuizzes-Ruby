=begin
What does the following code return?

:id.instance_of?(Symbol)

Answer:
true
:id is an instance of the Symbol class (it is a symbol object that was created by the Symbol class).
=end

p :id.instance_of?(Symbol)
p :id.is_a?(Symbol)
p :id.class

=begin
result = []
weird_array = ["blah", :meow, 42, 90, :building]
Iterate over every element of weird_array and add the element to the result array if the element is a Symbol (i.e. an instance of the Symbol class).

Answer:
weird_array.each do |element|
  if element.instance_of?(Symbol)
    result.push(element)
  end
end
=end

result = []
weird_array = ["blah", :meow, 42, 90, :building]

weird_array.each { |i| result << i if i.is_a?(Symbol) }
p result

=begin
sports = ["basketball", "baseball", "football"]
Iterate over the sports Array and print out the following list:

"1. basketball"
"2. baseball"
"3. football"

Answer:
sports.each_with_index do |sport, index|
  puts index.to_s + ". " + sport
end
The each_with_index() method keeps track of the index of each element in the array (remember, Array's are zero-indexed, meaning that the first element corresponds to 0). Sport and index are called block variables and we can name them however we want, but it best to use a variable name that makes sense. Notice that two block variables are required with the each_with_index() method - one to keep track of the element and another to keep track of the index.
=end

sports = ["basketball", "baseball", "football"]

sports.each_with_index { |i, ix| puts "#{ix + 1}. #{i}" }

=begin
last_names = ["D", "Krugman"]
Iterate over last_names and create this array: ["Paul D", "Paul Krugman"]

Answer:
last_names.map do |last_name|
  "Paul " + last_name
end
The map() method is used to create a new array.
=end

last_names = ["D", "Krugman"]
p last_names.map { |name| "Paul #{name}" }

=begin
soap_opera = ["all", "my", "children"]
Return true if any of the elements in the soap_opera array start with the letter "a" and false otherwise.

Answer:
soap_opera.any? do |word|
  word[0] == "a"
end
The any?() method iterates over every element of the array and returns true if the code block is ever true. Methods with question marks in Ruby return true or false and are called predicate methods.
=end

soap_opera = ["all", "my", "children"]

puts soap_opera.each { |i| i if i[0] == 'a' } ? true : false # verbose
p soap_opera.any? { |i| i[0] == 'a' }

=begin
tools = ["ruby", "rspec", "rails"]
Return true if every element of the tools array starts with an "r" and false otherwise.

Answer:
tools.all? do |tool|
  tool[0] == "r"
end
The all?() method iterates over every element of the array and returns true if the code block is always true.
=end

tools = ["ruby", "rspec", "rails"]
p tools.all? { |i| i[0] == 'r' }

=begin
Return true if the string "stimpy" contains the letter "s" and false otherwise.

Answer:
tools.all? do |tool|
  tool[0] == "r"
end
The all?() method iterates over every element of the array and returns true if the code block is always true.
=end

p "stimpy".include?('s')

=begin
captain_planet = ["earth", "fire", "wind", "water", "heart"]
Create a new array from the captain_planet array with all the elements that contain the letter "a".

Answer:
captain_planet.select do |word|
  word.include?("a")
end
=end

captain_planet = ["earth", "fire", "wind", "water", "heart"]
p captain_planet.select {|i| i.include?('a')}

=begin
stuff = ["candy", :pepper, "wall", :ball, "wacky"]
Identify the first element in the stuff array that begins with the letters "wa".

Answer:
stuff.find do |word|
  word[0..1] == "wa"
end
=end

stuff = ["candy", :pepper, "wall", :ball, "wacky"]

p stuff.find { |i| i[0..1] == 'wa' }

=begin
Identify all the elements in the stuff array that begins with the letters "wa".

Answer:
stuff.find_all do |word|
  word[0..1] == "wa"
end

# OR

stuff.select do |word|
  word[0..1] == "wa"
end
=end

p stuff.find_all {|i| i[0..1] == 'wa'}
p stuff.select {|i| i[0..1] == 'wa' }

=begin
abcs = [:a, :b, :c]
Create the array [:c, :b, :a] from the abcs array.

Answer:
abcs.reverse()
=end

abcs = [:a, :b, :c]
p abcs.reverse

=begin
people = [["Lebron", "cool dude"], ["Bieber", "jerk face"]]
The people array is an array of two arrays (this is also called a nested array).

Get the "cool dude" string from the people array.

Answer:
people[0][1]
people[0] is the same as ["Lebron", "cool dude"], so the expression simplifies to ["Lebron", "cool dude"][1], which equals "cool dude".
=end

people = [["Lebron", "cool dude"], ["Bieber", "jerk face"]]
p people[0][1]

=begin
x = "cat"
y = "hat"
Show two ways to concatenate x and y to form the sentence: "the cat and the hat"

Answer:
"the " + x + " and the " + y
#OR
"the #{x} and the #{y}"
The second method is called string interpolation and many programmers consider this technique more readable.
=end

x = "cat"
y = "hat"
p "the #{x} and the #{y}"
p "the " + x + " and the " + y

=begin
Iterate through the people array and print the following sentences: Lebron is a cool dude Bieber is a jerk face

Answer:
people.each do |first_name, description|
  puts "#{first_name} is a #{description}"
end

# OR (the significantly less readable answer):

people.each do |person|
  puts "#{person[0]} is a #{person[1]}"
end
=end

people.each {|i,j| puts "#{i} is a #{j}"}

=begin
test_scores = [["jon", 99], ["sally", 65], ["bill", 85]]
Create an array of all students with test scores greater than 80. The result should be [["jon", 99], ["bill", 85]].

Answer:
test_scores.select do |name, score|
  score > 80
end
=end

test_scores = [["jon", 99], ["sally", 65], ["bill", 85]]

p test_scores.select {|i,j| j > 80 }

=begin
planets = {:earth => [:luna], :mars => [:deimos, :phobos], :jupiter => [:callisto, :io, :europa]}
Return the moons of :mars as a single string separated by a comma. Result should be "deimos, phobos".

Answer:
planets[:mars].join(", ")
=end

planets = {:earth => [:luna], :mars => [:deimos, :phobos], :jupiter => [:callisto, :io, :europa]}
p planets[:mars].join(', ')

=begin
baseball_players = {:babe_ruth => {:hits => 2873, :home_runs => 714, :obp => 474}, :barry_bonds => {:hits => 2935, :home_runs => 762, :obp => 444}}
Return the number of home_runs that Babe Ruth hit in his career.

Answer:
baseball_players[:babe_ruth][:home_runs]
Nested hashes produce readable code. From the above line, it is easy to determine that we are getting the number of home runs for Babe Ruth.
=end

baseball_players = {:babe_ruth => {:hits => 2873, :home_runs => 714, :obp => 474}, :barry_bonds => {:hits => 2935, :home_runs => 762, :obp => 444}}

p baseball_players[:babe_ruth][:home_runs]