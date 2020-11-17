class Item
    # Optimized the code
    def self.valid_date?(date_string)
        parts = date_string.split('-').map(&:to_i)
        year, month, day = parts
        return false if !(0..12).include?(month)
        return false if !(0..31).include?(day)
        true
    end
     # Optimized the code
    attr_reader :deadline, :is_done
    attr_accessor :title, :description

    def initialize(title, deadline, description)
        @title = title
        @deadline = deadline
        @description = description
        @is_done = false
    end

    def deadline=(new_deadline)
        raise "The deadline is not valid!" if !Item.valid_date?(new_deadline)
    end
    
    # Optimized the code
    def toggle
        @is_done = !@is_done
    end
end