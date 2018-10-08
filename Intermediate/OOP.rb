=begin
Add a method to the Array class that applies the String#downcase method to every string object in the Array.

Answer:
class Array
  def downcase_strings
    self.map do |element|
      element.instance_of?(String) ? element.downcase : element
    end
  end
end

p [1, "BOB", "cRaZy", :cool].downcase_strings # returns [1, "bob", "crazy", :cool]
=end

class Array
    def str_downcase()
        self.map {|i| i.is_a?(String)? i.downcase : i}
    end
end

p [1, "BOB", "cRaZy", :cool].str_downcase

=begin
Use the following code to create an instance of the Cat class.

module Wrapper
  module Container
    class Cat
    end
  end
end

Answer:
cat = Wrapper::Container::Cat.new
The Cat class is inside the Wrapper and Container modules. The Wrapper and Container modules need to be referenced to instantiate instances of the Cat class.
=end

module Wrapper
    module Container
      class Cat
      end
    end
end

cat = Wrapper::Container::Cat.new
p cat.class