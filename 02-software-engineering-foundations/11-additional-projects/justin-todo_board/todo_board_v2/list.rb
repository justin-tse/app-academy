require_relative "item.rb"
class List
    attr_accessor :label

    def initialize(label)
        @lable = label
        @items = []
    end

    def add_item(title, deadline, description=nil)
        item = Item.new(title, deadline, description)
        if item.valid_date?(deadline)
            @items << item
            true
        else
            false
        end
    end

    def size
        @items.length
    end

    def valid_index?(index)
        0 <= index && index <= self.size
    end

    def swap(index_1, index_2)
        if valid_index?(index_1) && valid_index?(index_2)
            @items[index_1], @items[index_2] = @items[index_2], @items[index_1]
            true
        else
            false
        end
    end

    def [](index)
        if valid_index?(index)
            @items[index]
        else
            nil
        end
    end

    def priority
        @items.first
    end

    def print
        puts "-------------------------------------------------"
        puts @lable.upcase.center(49, ' ')
        puts "-------------------------------------------------"
        puts "Index | Item                 | Deadline   | Done".ljust(49, ' ')
        puts "-------------------------------------------------"
        @items.each_with_index do |item, idx|
            puts "#{idx.to_s.ljust(5, ' ')} | #{item.title.ljust(20, ' ')} | #{item.deadline.ljust(11, ' ')} | #{item.is_done.ljust(5, ' ')}"
        end
        puts "-------------------------------------------------"
    end

    def print_full_item(index)
        puts "-------------------------------------------------"
        puts "#{@items[index].title.ljust(31, ' ')} #{@items[index].deadline.ljust(12, ' ')} #{@items[index].is_done.rjust(4, ' ')}"
        puts "-------------------------------------------------"
    end

    def print_priority
        puts "-------------------------------------------------"
        puts "#{self.priority.title.ljust(31, ' ')} #{self.priority.deadline.ljust(12, ' ')} #{self.priority.is_done.rjust(4, ' ')}"
        puts "-------------------------------------------------"
    end

    def up(index, amount=1)
        return false if !self.valid_index?(index)
        while amount > 0 && index > 0
            self.swap(index, index - 1)
            index -= 1
            amount -= 1
        end
        true
    end

    def down(index, amount=1)
        return false if !self.valid_index?(index)
        while amount > 0 && index < self.size - 1
            self.swap(index, index + 1)
            index += 1
            amount -= 1
        end
        true
    end

    def sort_by_date!
        @items.sort_by! { |item| item.deadline }
    end

    def toggle_item(index)
        @items[index].toggle
    end


    def remove_item(index)
        return false if !self.valid_index?(index)
        @items.delete(@items[index])
        true
    end

    def purge
        @items.select! { |item| item.is_done == '[ ]' }
    end
end