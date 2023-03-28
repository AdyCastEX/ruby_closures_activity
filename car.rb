class Car
    attr_reader :color, :plate_number, :manufacturer
  
    def initialize(color, plate_number, manufacturer)
      @color = color
      @plate_number = plate_number
      @manufacturer = manufacturer
    end

end
