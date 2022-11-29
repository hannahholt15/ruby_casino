require_relative "player"
require_relative "high_low"
require_relative "slots"
require_relative "deck"

class Casino 
    attr_accessor :player

    def initialize(player)
     @player = Player.new
     show_menu
    end

    def show_menu
        begin
            puts "Hello Welcome to our Casino"
            puts "What game would you like to play"
            puts "1. Slots"
            puts "2. High / Low"
            puts "3. Check Wallet"
            puts "4. Exit"
            response = gets.strip.to_i
            raise "Bad Input" unless response > 0 && response < 5
            case response
            when 1 
                Slots.new(@player)
            when 2 
                Highlow.new(@player)
            when 3 
                puts "you have $#{player.money}"
            when 4
                puts "Thanks for stopping by"
                exit
            else 
                puts "Invalid Selection, try again"
                show_menu
            end
        end
    end
end