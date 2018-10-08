=begin
colors = ['red', 'violet', 'blue']
Use the colors array to construct the following array:

[['red', 1], ['violet', 2], ['blue', 3]]

Answer:
colors.map.with_index do |color, index|
  [color, index + 1]
end

# OR

result = []
colors.each_with_index do |color, index|
  result << [color, index  + 1]
end
result # now equals [['red', 1], ['violet', 2], ['blue', 3]]
=end

colors = ['red', 'violet', 'blue']

p colors.each_with_index.map { |i, idx| [i, idx+1] }
p colors.map.with_index { |i, idx| [i, idx+1] }

=begin
Create an array of the numbers 1 though 100 (i.e. [1, 2, 3, ..., 99, 100]).

Answer:
(1..100).to_a
(1..100) is a Range object. The to_a method is defined in the Range class to convert a range to an array.
=end

#p (1..100).map {|i| i }
p (1..100).to_a

=begin
fib = [0, 1]
Use fib to create the following array: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34] Notice that these are the first ten numbers in the Fibonocci sequence and each number equal the sum of the prior two numbers.

Answer:
while fib.length < 10
  fib << fib[-2] + fib[-1]
end
=end

fib = [0, 1]

while fib.length < 10
    fib << fib[-2] + fib[-1]
end

=begin
Hash[blockbusters]

# OR

result = {}
blockbusters.each do |actor, movie|
  result[actor] = movie
end
result # hash is now populated
The actor and movie block variables correspond with the first and second element of sub-arrays in the blockbusters array The block variables make the code significantly more readable than regular array indexing:

result = {}
blockbusters.each do |sub_array|
  result[sub_array[0]] = sub_array[1]
end
result # same result, but less readable code
=end

blockbusters = [['will smith', 'i am legend'], ['brad pitt', 'fight club'], ['frodo', 'the hobbit']]

p Hash[blockbusters]
p blockbusters.to_h

=begin
players = [['r', 'kelly'], ['50', 'cent'], ['miley', 'cyrus']]
Use the players array to construct the following array: ["kelly", "cent", "cyrus"]

Answer:
players.map do |_, last_name|
  last_name
end
The first_name block variable is not used, so the convention is to name this variable _. This code would also work, but it is extraneous to define the first_name block variable if it is never used.

players.map do |first_name, last_name| last_name end
=end

players = [['r', 'kelly'], ['50', 'cent'], ['miley', 'cyrus']]

p players.map {|i| i[1]}

=begin
numbers = [1, 2, 3, 4]
Sum all the elements in the numbers array.

Answer:
result = 0
numbers.each do |number|
  result += number
end
result # equals 10
=end

numbers = [1, 2, 3, 4]

p numbers.sum

=begin
nums = [1, 2, 3]
letters = ['a', 'b', 'c']
Use nums and letters to construct the following array:

[[1, "a"], [1, "b"], [1, "c"], [2, "a"], [2, "b"], [2, "c"], [3, "a"], [3, "b"], [3, "c"]]

Answer:
result = []
nums.each do |num|
  letters.each do |letter|
    result << [num, letter]
  end
end
result # equals [[1, "a"], [1, "b"], [1, "c"], [2, "a"], [2, "b"], [2, "c"], [3, "a"], [3, "b"], [3, "c"]]
=end

nums = [1, 2, 3]
letters = ['a', 'b', 'c']

result = []
nums.map do |num|
    letters.each do |letter|
      result << [num, letter]
    end
  end
p result

=begin
Create the following array:

[1, 10, 100, 1_000, 10_000, 100_000, 1_000_000]
Notice that every element of the array is equal to the previous element times ten.

Answer:
7.times.map { |i| 10 ** i }
=end

array = [1]
while array.length < 7
    array << array[-1] * 10
end
p array

p 7.times.map { |i| 10 ** i }

=begin
numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = ['spades', 'hearts', 'diamonds', 'clubs']
Use numbers and suits to construct the following array (represents the 52 cards in a deck): [["2", "spades"], ["3", "spades"] ... ["K", "clubs"], ["A", "clubs"]]

Answer:
result = []
suits.each do |suit|
  numbers.each do |number|
    result << [number, suit]
  end
end
=end

numbers = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
suits = ['spades', 'hearts', 'diamonds', 'clubs']

deck = []
suits.map do |suit|
    numbers.each do |num|
      deck << [num, suit]
    end
end
p deck

=begin
fav_numbers = [1, 2, 3, 4, 10, 20, 33, 35]
Use fav_numbers to create the following array (all the even numbers):

[2, 4, 10, 20]

Answer:
fav_numbers.select do |number|
  number.even?
end
=end

fav_numbers = [1, 2, 3, 4, 10, 20, 33, 35]

p fav_numbers.select {|n| n % 2 == 0}
p fav_numbers.select {|n| n.even?}
p fav_numbers.select {|n| n.odd?}

=begin
Add a all_start_with_a? method to the Array class that returns true if every String element in an array starts with the letter "a".

["all", "in", "the", "family"].all_start_with_a? # should return false
["aardvark", "anteater"].all_start_with_a? # should return true

Answer:
class Array
  def all_start_with_a?
    self.all? do |word|
      word[0] == "a"
    end
  end
end
Opening core library classes and adding custom methods is called "monkey patching".
=end

class Array
    def all_start_with_a?
      self.all? { |word| word[0] == "a" }
    end
end

p ["all", "in", "the", "family"].all_start_with_a?
p ["aardvark", "anteater"].all_start_with_a?

=begin
What is the sum of all the numbers between 0 and 100 that are divisible by both 3 and 5?

Answer:
(0..100).to_a.select do |number|
  number % 3 == 0 && number % 5 == 0
end.inject do |memo, number|
  memo += number
  memo
end
=end

p (0..100).to_a.select {|n| (n % 3 == 0) && (n % 5 == 0)}.sum

=begin
first = ["cool", "busta", "odb"]
second = ["puffy", "cool", "busta"]
Create an array of all the elements that are in first, but not in second.

Answer:
first - second # returns ["odb"]
=end

first = ["cool", "busta", "odb"]
second = ["puffy", "cool", "busta"]

p first - second

=begin
first = ["cool", "busta", "odb"]
second = ["puffy", "cool", "busta"]
Create an array of all the elements that are in first and second with no duplicates.

Answer:
(first + second).uniq
=end

p first.select {|i| second.include?(i) }
p (first + second).uniq

=begin
manly = ['batman', 'manbot', 'mace', 'tulip', 'nah man, nah']
Create an array of all elements in the manly array that contain the word "man". The return value should be:

["batman", "manbot", "nah man, nah"]

Answer:
manly.grep /man/

# OR

manly.select {|word| word.match /man/ }
=end

manly = ['batman', 'manbot', 'mace', 'tulip', 'nah man, nah']

p manly.select {|i| i.include?('man')}

=begin
days = ['mon', 'tues', 'wed', 'thur', 'fri']
Create an array of the elements with indexes 0 and 2. The return value should be ['mon', 'wed'].

Answer:
days.values_at(0, 2)
=end

days = ['mon', 'tues', 'wed', 'thur', 'fri']
p days.values_at(0, 2)