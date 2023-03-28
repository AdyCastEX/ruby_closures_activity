class Car
  attr_accessor :color, :plate_number, :manufacturer

  def initialize
    yield self if block_given?
  end

  def carType 
    {
      color: color,
      plate_number: plate_number,
      manufacturer: manufacturer
    }
  end
end

car = Car.new do |c|
  c.color = "Red"
  c.plate_number = "ABC 1234"
  c.manufacturer = "Toyota"
end

puts "This car has #{car.carType}"
puts "This car has color #{car.color}"
puts "This car has plate number #{car.plate_number}"
puts "This car has manufacturer #{car.manufacturer}"

# car = Car.new("Red", "ABC 1234", 'Toyota')
# puts car.class