class Slots
  def initialize(player)
    @player= player
    @random_1 = Array.new(1) {rand 7}
    @random_2 = Array.new(1) {rand 7}
    @random_3 = Array.new(1) {rand 7}
    play
  end

  def play
    slot_1 = @random_1
    slot_2 = @random_2
    slot_3 = @random_3
    puts "What is your wager ?"
   wager= gets.strip.to_i
    if wager > 0
     puts "lets begin"
     puts "#{slot_1}"
     puts "#{slot_1},#{slot_2}"
      puts "#{slot_1},#{slot_2},#{slot_3}" 
     if win = slot_1 == slot_2 && slot_2 == slot_3
     puts "you win"
     wager *= -1 if !win
      @player.money += wager 
     else
      !win = slot_1 == slot_2 && slot_2 == slot_3
       puts "you lose"
       wager *= -1 if !win
      @player.money += wager 
       return
      end
    end
  end
end