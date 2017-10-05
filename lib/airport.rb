class Airport

  attr_accessor :planes

  def initialize
    @planes = []
  end

  def take_off(plane)
    @planes.delete(plane)
  end



end
