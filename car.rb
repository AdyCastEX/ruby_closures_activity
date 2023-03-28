class Car
    attr_accessor :color, :plate_number, :manufacturer

    def initialize()
        yield self
        @color = self.color
        @plate_number = self.plate_number
        @manufacturer = self.manufacturer
    end

end

car = Car.new do |c|
    c.color = "Red"
    c.plate_number = "ABC 1234"
    c.manufacturer = "Toyota"
  end

# test
# puts "car attr: #{car.manufacturer}"