class Series
  attr_reader :nums

  def initialize(nums)
    @nums = nums
  end

  def slices(int)
    raise ArgumentError if int > nums.size
    result = []
    transformed = nums.chars.map(&:to_i)
    transformed.each_with_index do |_, index|
      slice = transformed[index...index + int]
      result << slice if slice.length == int
    end
    result
  end
end
