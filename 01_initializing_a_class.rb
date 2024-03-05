module Speak
  def speak(sound)
    puts "#{sound}"
    puts '#{sound}'
    # puts `#{sound}` # No such file or directory - Arf! (Errno::ENOENT)
  end
end

class GoodDog
  include Speak
end

class HumanBeing
  include Speak
end

# GoodDog example
puts '-- GoodDog speaks --'
sparky = GoodDog.new
sparky.speak("Arf!")

puts '-- GoodDog ancestors --'
puts GoodDog.ancestors


# HumanBeing example
puts '-- HumanBeing speaks --'
bob = HumanBeing.new
bob.speak("Wah? Oh! Uh, Hello!")

puts '-- HumanBeing ancestors --'
puts HumanBeing.ancestors

# Exercises
# 1. How do we create an object in ruby?
class Objetion
end

my_object = Objetion.new

puts my_object

# 2. What is a module? What is its purpose? How do we use them our classes? Create a module for the class you created in excercise 1 and include it properly.

module Rand
  def says_random
    puts "random"
  end
end

class OtherClass
  include Rand
end

my_second_object = OtherClass.new

puts my_second_object.says_random

# https://launchschool.com/books/oo_ruby/read/the_object_model#whyobjectorientedprogramming