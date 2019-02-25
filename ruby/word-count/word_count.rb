class Phrase
  attr_reader :phrase

  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def word_count
    phrase.scan(/[\w]+(?:'[\w]+)*/).each_with_object({}) do |word, counter|
      counter[word] ||= 0
      counter[word] += 1
    end
  end
end
