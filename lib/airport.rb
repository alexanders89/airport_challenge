class Airport

  attr_accessor :planes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @planes = []
    @capacity = capacity
  end

  def land(plane)
    @planes << plane
    plane
  end

  def take_off(plane)
    @planes.delete(plane)
    plane
  end

  def capacity
    @capacity
  end


end
