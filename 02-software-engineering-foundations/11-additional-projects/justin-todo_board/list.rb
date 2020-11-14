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
end