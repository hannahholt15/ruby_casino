require_relative "deck"

class Highlow
    def initializer(player)
        @player = player
        @deck = Deck.new
    end

    def play
        puts "How much do you want to bet"
        bet = gets.strip.to_i
        if bet is > 0 
            first_card = @deck.pull_card
            second_card = @deck.pull_card
            puts "The card is #{first_card}"
            print "(higher/lower:)"
            guess = gets.strip.downcase
            puts "The card is #{first_card}"
        else 
            puts "go home"
            show_menu
        end
    end
end