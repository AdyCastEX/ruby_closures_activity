class Car
    attr_accessor :color, :plate_number, :manufacturer
  
    def initialize
      yield(self)
    end
  end

  