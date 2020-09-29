require_relative "room"

class Hotel
  def initialize(name, capacities)
    @name = name
    
    @rooms = {}
    capacities.each { |room_name, capacity| @rooms[room_name] = Room.new(capacity) }
  end

  def name 
    @name.split.map(&:capitalize).join(" ")
  end

  def rooms
    @rooms
  end

 # Optimized code
    def room_exists?(room_name)
      @rooms.has_key?(room_name)
    end

# Optimized code
  def check_in(person,room_name)
    if !self.room_exists?(room_name)
      p "sorry, room is full"
      return
    end
    
    success = @rooms[room_name].add_occupant(person)
    if success
      p "check in successfull"
    else
      p "sorry, room does not exist"
    end
  end

# Optimized code
  def has_vacancy?
    @rooms.values.any? { |room| !room.full? }
  end

# Optimized code
  def list_rooms
    @rooms.each { |room_name, capacity| puts "#{room_name} : #{@rooms[room_name].available_space}"}
  end
end
