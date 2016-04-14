class Bike

  attr_accessor :docked
  attr_reader :broken

  def initialize
    @broken = false
  end

  def docked?
    true
  end

  def report_broken
  	@broken = true
  end

  def broken?
  	@broken
  end

end
