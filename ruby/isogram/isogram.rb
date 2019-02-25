class Isogram
  def self.isogram?(input)
    input = input.downcase

    input.scan(/\w/).none? { |char| input.count(char) > 1 }
  end
end
