=begin
Refactor the following code to not use inheritance.

class Person
  def full_name(first_name, last_name)
    "#{first_name} #{last_name}"
  end
end

class HockeyPlayer < Person
end

player = HockeyPlayer.new
p player.full_name("joe", "sakic")

Answer:
=end

class Person
  def full_name(first_name, last_name)
    "#{first_name} #{last_name}"
  end
end

class HockeyPlayer < Person
end

player = HockeyPlayer.new
p player.full_name("joe", "sakic")