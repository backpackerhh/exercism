class Series
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def slices(size)
    raise ArgumentError if size > string.length

    combinations = string.split('').combination(size).to_a.map(&:join).uniq

    filter_adjacents_combinations_from(combinations)
  end

  private

  def filter_adjacents_combinations_from(combinations)
    combinations.select { |combination| string.include?(combination) }
  end
end
