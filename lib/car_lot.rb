require_relative 'used_car'

class CarLot

  attr_accessor :cars
  attr_reader :name

  def initialize(name)
    @name = name
    @cars = []
  end

  def sell(car)
  end

  def search(make: nil, model: nil, year: nil, used: false)
  end

  def lot_value
  end

  def lot_revenue
  end

end