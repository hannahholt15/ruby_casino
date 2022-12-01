#1. Start game player has a name and an initial bankroll.
#2. Player can go to different games via menu.
      # 1. Slots.
      # 2. High/low.
#3. Player places bet and wins/ loses (hint:rand).
#4. Player's bankroll goes up and down with wins and losses.
#5. wins and losses

require_relative 'player'
require_relative 'high_low'
require_relative 'slots'
 
class Casino
  def initialize
    @player = Player.new
    show_menu
  end

  def show_menu
    begin
    puts "what do you want to do?"
    puts "1. Slots"
    puts "2. High/Low"
    puts "3. Check wallet?"
    puts "4. Exit"
    responce = gets.strip.to_i
    raise "Bad Input" unless responce > 0 && responce < 5
      case  responce
      when 1
        Slots.new(@player)
      when 2 
        HighLow.new(@player)
      when 3
        puts "you have $#{@player.money}"
      when 4 
        puts "have a nice day" 
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
