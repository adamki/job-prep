class Game

  attr_reader :score_table
  def initialize
    @score_table = {"2" => 2, "3" => 3, "4" => 4,
             "5" => 5, "6" => 6, "7" => 7,
             "8" => 8, "9" => 9, "10" => 10,
             "J" => 10, "Q" => 10, "K" => 10,
             "A" => 11}
  end

  def scorer(val)
    num = val[0..1].sub(" ", "")
    puts @score_table[num]
  end

  def score_hand(hand
    hand.each do |card|
      hand_total = 0
      hand_total += score(card)
    end
  end

end

card = "2 or hearts"       # => "2 or hearts"
card_two = "10 of Spades"  # => "10 of Spades"
card_three = "K of clubs"  # => "K of clubs"
hand = ["2 or hearts","10 of Spades", "K of clubs"]

game = Game.new            # => #<Game:0x007ff924157898 @score_table={"2"=>2, "3"=>3, "4"=>4, "5"=>5, "6"=>6, "7"=>7, "8"=>8, "9"=>9, "10"=>10, "J"=>10, "Q"=>10, "K"=>10, "A"=>11}>
game.score_hand(hand)
