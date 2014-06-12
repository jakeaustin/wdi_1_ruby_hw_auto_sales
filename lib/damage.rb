class Damage

  attr_reader :description, :cost_to_fix

  def initialize(description, cost)
    @description = description
    @cost_to_fix = cost
  end

end
