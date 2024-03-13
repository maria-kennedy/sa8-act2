#############################
# PROB 1
puts "P1:"

class Laptop
    def initialize(brand, model)
        @brand = brand
        @model = model
    end

    def brand
        @brand
    end

    def model
        @model
    end
end

my_laptop = Laptop.new("Apple", "Macbook Pro")
puts my_laptop.brand
puts my_laptop.model


#############################
# PROB 2
puts "P2:"

class Gadget
    attr_reader :name
    attr_writer :price
    # initialize both
    def initialize(name, price)
        @name = name
        @price = price
    end
    # getter for price
    def price
        @price
    end
end

my_gadget = Gadget.new("Apple Watch", 299)

puts my_gadget.name

my_gadget.price = 249
puts "New price: #{my_gadget.price}"


#############################
# PROB 3
puts "P3:"

class User
    attr_reader :username

    #initialize
def initialize(username)
    @username = username
end

    # custom setter for validation
    def username=(username)
        if username.empty? || username.nil?
            raise ArgumentError, "Cannot be empty or nil."
        end
    end
end


my_username = User.new("mkenny")
puts my_username.username

# my_username.username = ""

#############################
# PROB 4
puts "P4:"

class Appliance
    def show_info
      puts "This is a household appliance."
    end
  end
  
  class Refrigerator < Appliance
    def finish
      puts "Finish: stainless steel"
    end
  end
  
  class Microwave < Appliance
    def finish
      puts "Finish: black"
    end
  end
  
  my_fridge = Refrigerator.new
  my_fridge.show_info
  my_fridge.finish

  my_microwave = Microwave.new
  my_microwave.finish
  my_microwave.show_info

#############################
# PROB 5
# puts "P5:"
# Define a module Payments as a namespace, and within it, define two classes, 
# Invoice and Receipt. Demonstrate creating instances of these classes within 
# the Payments namespace.


#############################
# PROB 6
# puts "P6:"
# Create a module Drivable with a method drive. 
# Include this module in a Car class and a Truck class to share the drive 
# method functionality. Show how objects of both classes can use the drive method.


#############################
# PROB 7
# puts "P7:"
# Define two classes, Writer and Painter, each with a create method. 
# Write a function showcase_talent that takes an array 
# of artists (writers and painters) and calls create on each, 
# demonstrating polymorphism through duck typing.


#############################
# PROB 8
# puts "P8:"
# Create a BankAccount class with methods to deposit and withdraw. 
# Use a private method log_transaction to log each deposit and withdrawal, 
# demonstrating encapsulation.

#############################
# PROB 9
# puts "P9:"
# Define a Camera class with an instance variable @status. 
# Use self to write methods turn_on and turn_off that 
# update the @status and print whether the camera is on or off.

#############################
# PROB 10
# puts "P10:"
# Create a Quiz class that dynamically defines methods for different questions 
# (e.g., question_about_math, question_about_history) using define_method. 
# Each method should print a question to the console.

