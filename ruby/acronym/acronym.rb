class Acronym
  def self.abbreviate(phrase)
    phrase.split(/\W+/).map { |word| word[0] }.join.upcase
  end
end
