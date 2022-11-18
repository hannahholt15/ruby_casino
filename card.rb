class Card

    attr_accessor :rank, :suit, :color
    def initialize (rank,suit,color)
        @rank = rank
        @suit = suit
        @color = color
    end

    def to_i
        case @rank
        when 'A'
            return 1
        when 'J'
            return 11
        when 'Q'
            return 12
        when 'K'
            return 13
        else
            @rank.to_i
        end
    end

    def to_s
        return "#{@rank} #{@suit} (#{@color})"
    end

end 
