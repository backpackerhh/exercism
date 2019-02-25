class Series
  attr_reader :string

  def initialize(string)
    @string = string
  end

  def slices(size)
    raise ArgumentError if size > string.length

    string.chars.each_cons(size).map(&:join)
  end
end
