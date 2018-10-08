=begin
Refactor the following class to remove the argument-order dependency.

class Person
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Yankees
  def captain
    Person.new("Jeter", 39)
  end
end

Answer:
The Yankees#captain method knows that the Person class must be initialized with the name argument first and the age argument second (referred to as an argument-order dependency). If the Person class is initialized with a hash, the order of the :name and :age keys does not matter and the argument-order dependency is eliminated.

class Person
  def initialize(args)
    @name = args.fetch(:name)
    @age = args.fetch(:age)
  end
end

class Yankees
  def captain
    Person.new({ name: "Jeter", age: 39 })
  end
end
=end

class Person
    def initialize(args)
      @name = args.fetch(:name)
      @age = args.fetch(:age)
    end
end
  
class Yankees
    def captain
      Person.new(name: "Jeter", age: 39)
    end
end

p Yankees.new.captain

=begin
Use dependency injection to refactor the following code.

class Person
  def initialize(args)
    @name = args.fetch(:name)
    @age = args.fetch(:age)
  end
end

class Hockey
  attr_reader :great_one
  def initialize
    @great_one = Person.new({ age: 52, name: "Gretzky" })
  end
end

p Hockey.new.great_one

Answer:
With dependency injection, the Hockey class is initialized with a person object, so it doesn't need to know as much stuff about the person class. Notice how the Hockey class does not need to know the name of the Person class or how many arguments the Person class is initialized with in the following refactoring. Eliminating these dependencies is how to write code that is loosely coupled and flexible.

class Person
  def initialize(args)
    @name = args.fetch(:name)
    @age = args.fetch(:age)
  end
end

class Hockey
  attr_reader :great_one
  def initialize(great_one)
    @great_one = great_one
  end
end

person = Person.new({ age: 52, name: "Gretzky" })
p Hockey.new(person).great_one
=end

class Person
  def initialize(args)
    @name = args.fetch(:name)
    @age = args.fetch(:age)
  end
end

class Hockey
  attr_reader :great_one
  def initialize(great_one)
    @great_one = great_one
  end
end

p Hockey.new(Person.new(age: 52, name: "Gretzky")).great_one


=begin
In the following example, the DataStructureConversion class depends on the Person class. Refactor the code to reverse the dependency direction and have the Person class depend on the DataStructureConversion class.

class Person
  def initialize(name)
    @name = name
  end
end

class DataStructureConversion
  def initialize
    @person = Person.new("bob")
  end

  def to_hash
    @person.instance_variables.inject({}) do |memo, var|
      memo[var] = @person.instance_variable_get(var)
      memo
    end
  end
end

p DataStructureConversion.new.to_hash

Answer:
class Person
  def initialize(name)
    @name = name
  end

  def to_hash
    DataStructureConversion.to_hash(self)
  end
end

class DataStructureConversion
  def self.to_hash(object)
    object.instance_variables.inject({}) do |memo, var|
      memo[var] = object.instance_variable_get(var)
      memo
    end
  end
end

p Person.new("bob").to_hash
The DataStructureConversion class can now be easily reused by other classes. In general, it is best to have less stable classes depend on more stable classes.
=end

class Person
    def initialize(name)
      @name = name
    end
    
    def to_hash
        DataStructureConversion.to_hash(self)
    end
end
  
class DataStructureConversion
    def self.to_hash(object)
      object.instance_variables.inject({}) do |memo, var|
        memo[var] = object.instance_variable_get(var)
        memo
      end
    end
end
  
p Person.new("bob").to_hash