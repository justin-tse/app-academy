  class Stack
    def initialize
      # create ivar to store stack here!
      @ivar = []
    end

    def push(el)
      # adds an element to the stack
      @ivar << el
    end

    def pop
      # removes one element from the stack
      @ivar.pop
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @ivar.last
    end
  end

# Now let's write a Queue class. We will need the following 
# instance methods: enqueue(el), dequeue, and peek.
class Queue
  def initialize
    @ivar = []
  end

  def enqueue(el)
    @ivar << el
  end

  def dequeue
    @ivar.shift
  end

  def peek
    @ivar.first
  end
end

class Map
  def initialize
    @ivar = []
  end

  def set(key, value)
    @ivar.each do |arr|
      if arr[0] == key
        arr[1] = value
        return
      end
    end
      @ivar << [key, value]
  end

  def get(key)
    @ivar.each do |arr|
      return arr[1] if arr[0] == key
    end
  end
  
  def delete(key)
    @ivar.each_index { |arr, idx| @ivar.delete_at(idx) if arr[0] == key }
  end

  def show
    p @ivar
  end
end
