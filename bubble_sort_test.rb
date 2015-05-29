require 'minitest/autorun'
require_relative 'bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_it_returns_zero
    bubble = BubbleSort.new
    output = bubble.sort_bubble([1,3,0])
    assert_equal [0,1,3], output
  end


end