require_relative "item.rb"
class List
    attr_accessor :label

    # Optimized the code ==> Use Parameter to defined the number is better (print)
    # print styles
    LINE_WIDTH = 49
    INDEX_COL_WIDTH = 5
    ITEM_COL_WIDTH = 20
    DEADLINE_COL_WIDTH = 10
    CHECKMARK = "\u2713".force_encoding('utf-8') # pretty checkmark '✓' == "\u2713"

    def initialize(label)
        @lable = label
        @items = []
    end

    def add_item(title, deadline, description=nil)
        item = Item.new(title, deadline, description)
        if Item.valid_date?(deadline)
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
        puts "-" * LINE_WIDTH
        puts @lable.upcase.center(LINE_WIDTH, ' ')
        puts "-" * LINE_WIDTH
        puts "#{'Index'.ljust(INDEX_COL_WIDTH)} | #{'Item'.ljust(ITEM_COL_WIDTH)} | #{'Deadline'.ljust(DEADLINE_COL_WIDTH)} | Done"
        puts "-" * LINE_WIDTH
        @items.each_with_index do |item, idx|
            status = item.is_done ? CHECKMARK : ' '
            puts "#{idx.to_s.ljust(INDEX_COL_WIDTH)} | #{item.title.ljust(ITEM_COL_WIDTH)} | #{item.deadline.ljust(DEADLINE_COL_WIDTH)} | [#{status}]"
        end
        puts "-" * LINE_WIDTH
    end

    def print_full_item(index)
        item = self[index]
        return if item.nil?
        status = item.is_done ? CHECKMARK : ' '
        puts "-" * LINE_WIDTH
        puts "#{item.title}".ljust(LINE_WIDTH/2) + "#{item.deadline} [#{status}]".rjust(LINE_WIDTH/2)
        puts item.description
        puts "-" * LINE_WIDTH
    end

    def print_priority
        print_full_item(0)
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

    # Optimized the code
    def remove_item(index)
        return false if !self.valid_index?(index)
        @items.delete_at(index)
        true
    end

    # Optimized the code ==> is_done is defined true or false
    def purge
        @items.delete_if(&:is_done) 
    end
end