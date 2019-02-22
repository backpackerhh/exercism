class Matrix
  attr_reader :rows, :columns

  def initialize(string_matrix)
    @rows = string_matrix.split("\n").map { |row| row.split.map(&:to_i) }
    @columns = @rows.transpose
  end
end
