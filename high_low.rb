require_relative 'deck'
require_relative 'card'

class HighLow
  def initialize(player)
   @player = player
   @deck = Deck.new
    play
  end

  def play
   puts "how much are you willing to lose?"
    wager = gets.strip.to_i
    if wager > 0
    first_card = @deck.pull_card
    second_card = @deck.pull_card
    puts "your card is #{first_card}"
    print "(higher/lower): "
    guess = gets.strip.downcase
    puts "the second card is #{second_card}"
    if guess == 'higher'
      if is_correct = first_card.to_i <= second_card.to_i
        puts "You Win!"
      else
        puts "YOU LOST!!!"
      end
      wager *= -1 if !is_correct
      @player.money += wager 
    else
      if is_correct = first_card.to_i > second_card.to_i
        puts "You Win!"
      else
        puts "YOU LOST!!!"
      end
      wager *= -1 if !is_correct
      @player.money += wager 
    end
  else
     puts "GO HOME"
      return
    end
  end
end