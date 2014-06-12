require 'date'
class Car

  ANNUAL_DEPRECIATION = 0.05

  attr_accessor :markup
  attr_reader :make, :model, :year, :msrp

  def initialize(make, model, year, msrp)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    @sold = false
    @markup = 0
  end

  def value
    @msrp - (Date.today.year - @year) * (ANNUAL_DEPRECIATION * @msrp)
  end

  def price
    value + (@markup * value)
  end

end
