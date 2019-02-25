class Hamming
  def self.compute(dna_strand_1, dna_strand_2)
    raise ArgumentError if dna_strand_1.length != dna_strand_2.length

    0.upto(dna_strand_1.length - 1).count { |idx| dna_strand_1[idx] != dna_strand_2[idx] }
  end
end
