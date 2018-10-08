=begin
people = [
  {:name => "bob", :age => 42},
  {:name => "frank", :age => 13}
]
Create an array of all the first names in the people array. The result should be ["bob", "frank"]

Answer:
people.map {|person| person[:name]}
=end

people = [
    {:name => "bob", :age => 42},
    {:name => "frank", :age => 13}
]

p people.map {|i| i[:name]}

=begin
class_grades = {
  :section_one => [88, 74, 64],
  :section_two => [99, 100]
}
Return an average of all the grades in :section_one and :section_two.

Answer:
grades = class_grades.values.flatten
grades.inject(0) do |sum, grade|
  sum += grade
end.to_f / grades.length
The Hash#values method returns an array of the values in a hash and the Array#flatten method converts the nested Array structure into a simple array. The inject() method is used to calculate the sum of all grades in the array and compute the average.
=end

class_grades = {
    :section_one => [88, 74, 64],
    :section_two => [99, 100]
}

p class_grades.map {|k,v| v.sum / v.length}

=begin
cities = {
  santa_cruz: "chill",
  new_york: "intense"
}
Use the cities hash to print out the following strings:

"santa_cruz is chill"
"new_york is intense"

Answer:
cities.each do |city, vibe|
  puts "#{city} is #{vibe}"
end
The Hash#each method iterates over the ordered hash and passes each key and value to the block. In this example, the city block variable corresponds with the keys and the vibe block variable corresponds with the values.
=end

cities = {
    santa_cruz: "chill",
    new_york: "intense"
}

cities.each {|k, v| puts "#{k} is #{v}"}

=begin
movie = {
  "dude" => [],
  "where's" => "",
  "my" => {},
  "car" => Object.new
}
Use the movie hash to construct the string "dude where's my car" (notice that the keys of the movie hash are the components of the desired string).

Answer:
movie.keys.join(" ")
The Hash#keys method returns an array of all the keys in a hash.
=end

movie = {
    "dude" => [],
    "where's" => "",
    "my" => {},
    "car" => Object.new
}

p movie.keys.join(" ")

=begin
dude = {
  age: 44,
  weight: 250,
  net_worth: 25
}
Return the product of all the values in the dude hash (the result should be 44 * 250 * 25 = 275_000).

Answer:
dude.values.inject(1) do |product, number|
  product *= number
  product
end
=end

dude = {
    age: 44,
    weight: 250,
    net_worth: 25
}

p dude.values.reduce {|sum,number| sum * number} # https://youtu.be/UogjRwGl7k0

=begin
christmas = {
  santa: "ho ho ho",
  grinch: "presents destroy wealth"
}
Use the christmas hash to construct the following hash: {santa: "ho ho ho"}

Answer:
christmas.select do |k, v|
  k == :santa
end
The k and v block variables correspond with the keys and values in the christmas hash. To properly follow Ruby conventions, the v block variable should be named _ (underscore) as it is not being used.
=end

christmas = {
    santa: "ho ho ho",
    grinch: "presents destroy wealth"
}

p christmas.select { |k, v| k == :santa }

=begin
videos = {yoga: "stretch it out"}
Retrieve the value associated with the :dumb_and_dumber key in the videos hash. If the :dumb_and_dumber key is not available in the hash, return the string "no one's home".

Answer:
videos.fetch(:dumb_and_dumber, "no one's home")
The second argument to the Hash#fetch method is a default value and is optional. The default value is returned whenever the key is not present in the hash. If a default value is not specified, Hash#fetch will raise an error if the key is not found.

OR

videos[:dumb_and_dumber] || "no one's home"
videos[:dumb_and_dumber] returns nil because the :dumb_and_dumber key is not in the hash. The Ruby || operator returns the second operand if the first operand is falsey (the only falsey values in Ruby are false and nil), so the || operator is another way to set a default value for a hash query.
=end

videos = {yoga: "stretch it out"}
p videos.fetch(:dumb_and_dumber, "no one's home")
p videos[:dumb_and_dumber] || "no one's home"

=begin
some_hash = {a: 123, b: 456}

Convert some_hash to [[:a, 123], [:b, 456]]

Answer:
some_hash.to_a
=end

some_hash = {a: 123, b: 456}

p some_hash.map {|k,v| [k,v]}
p some_hash.to_a

=begin
h1 = {surfing: "fun"}
h2 = {rock_climbing: "scary"}
Use h1 and h2 to construct the following hash: {:surfing => "fun", :rock_climbing => "scary"}

Answer:
h1.merge(h2)
=end

h1 = {surfing: "fun"}
h2 = {rock_climbing: "scary"}
p h1.merge(h2)

=begin
singers = {
  kesha: "fun",
  pitbull: "how is this dude famous?",
  missy_elliot: "really smart"
}
Create an array of the values associated with the :kesha and :missy_elliot keys.

Answer:
singers.values_at(:kesha, :missy_elliot)
=end

singers = {
    kesha: "fun",
    pitbull: "how is this dude famous?",
    missy_elliot: "really smart"
}

p singers.select {|k,v| k == :kesha || k == :missy_elliot }.values
p singers.values_at(:kesha, :missy_elliot)

=begin
animals = [['dogs', 4], ['cats', 3], ['dogs', 7]]
Convert animals to {'dogs' => 11, 'cats' => 3}.

Answer:
animals.inject({}) do |memo, (animal, num)|
  memo[animal] ? memo[animal] += num : memo[animal] = num
  memo
end
=end

animals = [['dogs', 4], ['cats', 3], ['dogs', 7]]
result = {}
animals.each {|i,j| result[i]? result[i] += j : result[i] = j}
p result