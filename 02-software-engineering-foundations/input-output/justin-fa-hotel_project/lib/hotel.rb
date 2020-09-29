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

  def room_exists?(input_name)
    if @rooms.keys.include?(input_name)
      true
    else
      false
    end
  end

  def check_in(person, room_name)
    if self.room_exists?(room_name)
      if @rooms[room_name].add_occupant(person)
        p "check in successful"
      else
        p "sorry, room is full"
      end
    else
      p "sorry, room does not exist"
    end
  end

  def has_vacancy?
    @rooms.each do |room_name, capacity|
      if @rooms[room_name].full?  == false
        return true
      end
    end
    false
  end

  def list_rooms
    @rooms.each do |room_name, capacity|
      puts "#{room_name}.*#{@rooms[room_name].available_space}" 
    end
  end
end
