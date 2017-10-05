class Airport

  attr_accessor :planes, :capacity

  DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @planes = []
    @default_capacity = capacity
  end

  def land(plane)
    raise "Airport is full!" if @planes.count >= DEFAULT_CAPACITY
    @planes << plane
    plane
  end

  def take_off(plane)
    @planes.delete(plane)
    plane
  end

  def capacity
    @default_capacity - @planes.count
  end


end
