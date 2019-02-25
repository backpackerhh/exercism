class Scrabble
  SCORES = {
    %w(A E I O U L N R S T) => 1,
    %w(D G)                 => 2,
    %w(B C M P)             => 3,
    %w(F H V W Y)           => 4,
    %w(K)                   => 5,
    %w(J X)                 => 8,
    %w(Q Z)                 => 10
  }

  def self.score(word)
    new(word).score
  end

  def initialize(word)
    @letters = word.to_s.upcase.scan(/\w/)
  end

  def score
    letters.sum(&method(:score_for_letter))
  end

  private

  attr_reader :letters

  def score_for_letter(letter)
    SCORES.select { |score| score.include?(letter) }.values.first
  end
end
