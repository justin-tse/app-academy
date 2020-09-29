class Room
  def initialize(capacity)
    @capacity = capacity
    @occupants = []
  end

  def capacity
    @capacity
  end

  def occupants
    @occupants
  end

  def full?
    if @occupants.length < @capacity
      false
    else
      true
    end
  end

# Optimized code
  def full?
    @occupants.length == @capacity
  end

  def available_space
    @capacity - @occupants.length
  end

  def add_occupant(name)
    if self.full?
      false
    else
      @occupants << name
      true  
    end
  end
end
