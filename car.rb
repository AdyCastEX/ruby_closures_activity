class Car
  attr_accessor :color, :plate_number, :manufacturer

  def initialize()
    yield self
  end
end

# car = Car.new do |c|
#   c.color = "Red"
#   c.plate_number = "ABC 1234"
#   c.manufacturer = "Toyota"
# end