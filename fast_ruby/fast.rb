class Fast
  attr_reader :elements

  def initialize
    @elements = (0..10).to_a
  end

  def first_element_greater_than(num)
    # select_result = elements.select{ |element| element > num }.first
    detect_result = elements.detect{ |element| element > num }
  end
end

fast = Fast.new
puts "result = #{fast.first_element_greater_than(5)}"
