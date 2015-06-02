class CharacterCount
  attr_reader :input, :splitted

  def initialize(input)
    @input = input
    @splitted = []
  end

  def splitted
    input.split("").map(&:to_s)
  end

  def split_me
    input
  end

end
