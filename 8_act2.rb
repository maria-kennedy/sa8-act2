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
# puts "P3:"


#############################
# PROB 4
# puts "P4:"


#############################
# PROB 5
# puts "P5:"


#############################
# PROB 6
# puts "P6:"


#############################
# PROB 7
# puts "P7:"


#############################
# PROB 8
# puts "P8:"


#############################
# PROB 9
# puts "P9:"


#############################
# PROB 10
# puts "P10:"


