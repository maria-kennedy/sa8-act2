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
# parent class
class Appliance
    def show_info
      puts "This is a household appliance."
    end
  end
  # child classes
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
puts "P5:"

module Payments     # namespace

    class Invoice
        def pay
            puts "Invoice needs to be paid."
        end
    end

    class Receipt
        def paid
            puts "Receipt has been paid."
        end
    end

end

inv = Payments::Invoice.new
inv.pay
rec = Payments::Receipt.new
rec.paid



#############################
# PROB 6
puts "P6:"

module Drivable
    # method within module
    def drive
        puts "Vroom"
    end
end
# car and truck classes
class Car
    include Drivable # from module
end
class Truck
    include Drivable
end

my_car = Car.new
my_car.drive
my_truck = Truck.new
my_truck.drive

#############################
# PROB 7
puts "P7:"

# writer adn painter classes
class Writer
    def create
      puts "Creating a new novella"
    end
end
  
class Painter
    def create
      puts "Creating a new mural"
    end
end

# method that takes an array of artists
def showcase_talent(artists)
    artists.each do |artist|
      artist.create
    end
end

#array of artists
artists = [Writer.new, Painter.new]
  
showcase_talent(artists)


#############################
# PROB 8
puts "P8:"


class BankAccount
    def initialize
        @balance = 0
    end

    def deposit(ammount)
        log_transaction("Deposit: #{ammount}") # should print message
        @balance += ammount
    end

    def withdraw(ammount)
        log_transaction("Withdraw: #{ammount}") # should print message
        @balance -= ammount
    end

    # private method
    private
    def log_transaction(stuff)
        puts stuff
    end
end

my_account = BankAccount.new
my_account.deposit(10000)
my_account.withdraw(100)


#############################
# PROB 9
puts "P9:"


class Camera
    
    attr_accessor :status
    
    # instance variable
    def initialize
        @status = "OFF"
    end

    # using self
    def turn_on
        self.status = "ON"
        puts "Camera is #{status}"
    end

    def turn_off
        self.status = "OFF"
        puts "Camera is #{status}"
    end
end

my_camera = Camera.new
my_camera.turn_on
my_camera.turn_off

#############################
# PROB 10
puts "P10:"


class Quiz
    ["math", "history", "science"].each do |subject|
        define_method("question_about_#{subject}") do   # using define_method
            puts "Subject: #{subject}   Question: Am I doing this correctly?"
        end
    end
end

my_quiz = Quiz.new
my_quiz.question_about_math
my_quiz.question_about_history
