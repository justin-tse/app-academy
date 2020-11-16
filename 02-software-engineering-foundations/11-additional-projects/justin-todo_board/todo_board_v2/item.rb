class Item
    attr_accessor :title, :deadline, :description, :is_done
    # attr_writer :is_done

    def initialize(title, deadline, description)
        @title = title
        @deadline = deadline
        @description = description
        @is_done = '[ ]'
    end

    def deadline=(date)
        raise "The deadline is not a valid date" if !valid_date?(date)
    end

    def valid_date?(date_string)
        date = date_string.split('-')
        m = date[1].to_i
        d = date[2].to_i
        return false if !(1 <= m && m <= 12)
        return false if !(1 <= d && d <= 31)
        true
    end
    
    def toggle
        if @is_done == '[ ]'
            @is_done = '[✓]'
        else
            @is_done = '[ ]'
        end
    end
end

# p Item.new('Fix login page', '2019-10-22', 'It loads slow.').valid_date?('2019-10-25') # true
# p Item.new('Fix login page', '2019-10-22', 'It loads slow.').valid_date?('1912-06-23') # true
# p Item.new('Fix login page', '2019-10-22', 'It loads slow.').valid_date?('2018-13-20') # false
# p Item.new('Fix login page', '2019-10-22', 'It loads slow.').valid_date?('2018-12-32') # false
# p Item.new('Fix login page', '2019-10-22', 'It loads slow.').valid_date?('10-25-2019') # false
