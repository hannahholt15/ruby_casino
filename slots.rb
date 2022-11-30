

class Slots
    def initializer(player)
        @player = player
        slot_pic = ["Cherry", "$$$", "Clover", "Bell", "Horse Shoe", "Bar"]
        play
    end

    def play
        puts "How much would you like bet"
        bet = gets.strip.to_i
        if bet is > 0 
        slot_pic1 = slot_pic.shuffle.first
        slot_pic2 = slot_pic.shuffle.first
        slot_pic3 = slot_pic.shuffle.first
        print `clear`
        puts "#{slot_pic1} - #{slot_pic2} - #{slot_pic3}"

        winnings = bet * slots(slot_pic1, slot_pic2, slot_pic3)
        puts "YOU WON $#{winnings}"

        else 
            puts "Thank you come again"
        end
    end
end