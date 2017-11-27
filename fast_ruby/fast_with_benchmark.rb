require "benchmark"

class Fast
  attr_reader :elements

  def initialize
    @elements = (0..100_000_000).to_a
  end

  def first_element_greater_than(num)
    select_result = nil
    detect_result = nil

    time_select = Benchmark.realtime do
      select_result = elements.select{ |element| element > num }.first
    end

    time_detect = Benchmark.realtime do
      detect_result = elements.detect{ |element| element > num }
    end

    puts "select_result = #{select_result}"
    puts "time_select = #{time_select.round(2)}\n\n"
    puts "detect_result = #{detect_result}"
    puts "time_detect = #{time_detect.round(2)}"
  end
end

fast = Fast.new
fast.first_element_greater_than(5)
