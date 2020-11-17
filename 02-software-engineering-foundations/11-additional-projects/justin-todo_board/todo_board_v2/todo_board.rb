require_relative "list.rb"
class TodoBoard
    def initialize
        @lists = Hash.new { |h, k| h[k] = []}
    end

    def get_command
        print "\nEnter a command: "
        command, target, *args = gets.chomp.split(' ')

        case command
        when 'mklist'
            @lists[target] = List.new(target)
        when 'ls'
            @lists.keys.each { |key| puts key }
        when 'showall'
            @lists.each { |target, list| list.print }
        when 'mktodo'
            @lists[target].add_item(*args)
        when 'up'
            @lists[target].up(*args.map(&:to_i))
        when 'down'
            @lists[target].down(*args.map(&:to_i))
        when 'swap'
            @lists[target].swap(*args.map(&:to_i))
        when 'sort'
            @lists[target].sort_by_date!
        when 'priority'
            @lists[target].print_priority
        when 'print'
            if args.empty?
                @lists[target].print 
            else
                @lists[target].print_full_item(*args.map(&:to_i))
            end
        when 'toggle'
            @lists[target].toggle_item(*args.map(&:to_i))
        when 'rm'
            @lists[target].remove_item(*args.map(&:to_i))
        when 'purge'
            @lists[target].purge
        when 'quit'
            return false
        else
            print "Sorry, that command is not recognized."
        end

        true
    end

    def run
        until !self.get_command
            self.get_command
        end
    end

    #Optimized 
    def run
        while true
            return if !self.get_command
        end
    end
end

TodoBoard.new.run
