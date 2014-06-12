require_relative 'car'
require_relative 'damage'

class UsedCar < Car

  MILEAGE_DEPRECIATION = 0.01

  attr_reader :mileage

  def initialize(make, model, year, msrp, mileage, damages: nil)
    super(make, model, year, msrp)
    @mileage = mileage
    @damages = damages
  end

  def value
    val = super - (@mileage / 10_000) * (MILEAGE_DEPRECIATION * @msrp)
    @damages.each { |damage| val -= damage.cost_to_fix } if @damages
    val
  end

end
