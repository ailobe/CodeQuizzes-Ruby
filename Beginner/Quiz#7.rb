=begin
The ancestors() class method demonstrates all the classes that a class inherits from. Show all the classes that the Array class inherits from.

Answer:
Array.ancestors()
Array.ancestors() returns the following array: [Array, Enumerable, Object, Kernel, BasicObject]. In this list, Array, Object, and BasicObject are classes. Array inherits from Object and Object inherits from BasicObject. Enumerable and Kernel are modules. The Enumerable module is included in the Array class and the Kernel module is mixed-in to the Object class (mixed-in is another way of saying that a module is included in a class).
=end

p Array.ancestors

=begin
class Box
end

my_box = Box.new
Explain how my_box.methods().count() returns a number greater than 50, even though no methods are defined in the Box class.

Answer:
The Box class inherits from the Object class, which gives the Box class all the methods from the object class. For example, the methods() method is not defined in my_box, but the methods() method is in the Object class, so my_box.methods() is valid.

Inheritance is important and there is a lot more to say, but this can wait until you are more familiar with object oriented programming. Focus on classes and modules first and then learn more about inheritance.
=end

class Box
end

my_box = Box.new
p my_box.methods.count

=begin
Create a BaseballPlayer class that is initialized with hits, walks, and at_bats. Add a batting_average() method that returns hits divided by at_bats as a floating point number. Add an on_base_percentage() method that returns (hits + walks) divided by at_bats as a floating point number. Demonstrate how the batting_average() and on_base_percentage() methods can be used.

Answer:
class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def batting_average()
    return(@hits.to_f / @at_bats)
  end

  def on_base_percentage()
    return((@hits + @walks).to_f / @at_bats)
  end
end


barry_bonds = BaseballPlayer.new(330, 110, 1125)
barry_bonds.batting_average()
barry_bonds.on_base_percentage()
=end

class BaseballPlayer
    attr_reader :hits, :walks, :at_bats
    def initialize(hits, walks, at_bats)
        @hits = hits
        @walks = walks
        @at_bats = at_bats
    end

    def batting_average
        hits / at_bats.to_f
    end

    def on_base_percentage
        (hits + walks) / at_bats.to_f
    end
end

player = BaseballPlayer.new(200, 100, 50)
puts player.batting_average
puts player.on_base_percentage