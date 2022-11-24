
# require_relative 'slots'
require_relative 'player'
require_relative 'high_low'

class Casino 
    def initialize 
     @player = Player.new
        show_menu
    end

    def show_menu
        begin
            puts 'What game would you like to play'
            puts '1. Slots'
            puts '2. High / Low'
            puts '3. Check Wallet'
            puts '4. Exit'
            response = gets.strip.to_i
            raise "Bad Input" unless response > 0 && response < 5
            case response
            when 1 
                #todo slots
            when 2 
                Highlow.new(@player)
            when 3 
                puts "you have $#{player.money}"
            when 4
                puts "Have a nice day"
                exit
            else 
                raise 
            end
            show_menu
        rescue StandardError => e
            puts e 
            retry
        end
    end
end

Casino.new
