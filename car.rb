class Car
  attr_accessor :color, :plate_number, :manufacturer

  def initialize()
      yield self
      @color = self.color
      @plate_number = self.plate_number
      @manufacturer = self.manufacturer
  end

end