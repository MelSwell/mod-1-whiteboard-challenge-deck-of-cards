require 'pry'

class Deck
  attr_accessor :cards
  def initialize
    @cards = [Card.create_clubs, Card.create_diamonds, Card.create_hearts, Card.create_spades]
    binding.pry
  end
end

class Card
  attr_accessor :suit, :rank

  @@all = []
  
  def initialize(suit, rank)
    @suit = suit
    @rank = rank
    @@all << self
  end

  def self.all
    @@all
  end

  def self.create_hearts
    rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    13.times do
      binding.pry 
      current_rank = rank[0]
      Card.new("Hearts", current_rank)
      rank.delete(current_rank)
    end
  end

  def self.create_spades
    rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    13.times do
      current_rank = rank[0] 
      Card.new("Spades", current_rank)
      rank.delete(current_rank)
    end
  end

  def self.create_clubs
    rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    13.times do
      current_rank = rank[0] 
      Card.new("Clubs", current_rank)
      rank.delete(current_rank)
    end
  end

  def self.create_diamonds
    rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    13.times do 
      current_rank = rank[0]
      Card.new("Diamonds", current_rank)
      rank.delete(current_rank)
    end
  end

end
