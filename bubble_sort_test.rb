require 'minitest/autorun'
require_relative 'bubble_sort'

class BubbleSortTest < Minitest::Test
  def test_it_returns_zero
    bubble = BubbleSort.new
    output = bubble.sort_bubble([0])
    assert_equal [0], output
  end

  def test_it_returns_simple_array
    bubble = BubbleSort.new
    output = bubble.sort_bubble([0,1])
    assert_equal [0,1], output
  end

  def test_it_returns_simple_array_reversed
    bubble = BubbleSort.new
    output = bubble.sort_bubble([1,0])
    assert_equal [0,1], output
  end

  def test_it_returns_simple_array_of_three
    bubble = BubbleSort.new
    output = bubble.sort_bubble([1,3,2])
    assert_equal [1,2,3], output
  end

  def test_it_returns_multiples
    bubble = BubbleSort.new
    output = bubble.sort_bubble([1,3,3])
    assert_equal [1,3,3], output
  end

  def test_it_returns_long
    bubble = BubbleSort.new
    output = bubble.sort_bubble([1,4,5,11,7,2,3])
    assert_equal [1,2,3,4,5,7,11], output
  end

  def test_it_returns_complex
    bubble = BubbleSort.new
    output = bubble.sort_bubble([1,-1.3,5,4020202,11,7.43939393,2,3])
    assert_equal [-1.3,1,2,3,5,7.43939393,11,4020202], output
  end


end