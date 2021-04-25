class DNA
  attr_reader :sequence

  def initialize(sequence)
    @sequence = sequence
  end

  def hamming_distance(comparison_sequence)
    count = 0
    arr = [comparison_sequence, sequence].sort { |a, b| a.size <=> b.size }

    arr[0].split('').each_with_index do |char, index|
      count += 1 if char != arr[1][index]
    end
    count
  end
end
