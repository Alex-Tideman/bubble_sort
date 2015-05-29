class BubbleSort

  def sort_bubble(array)
    swap = true
    swap_count = 0
    while swap
      swap = false
      (1...array.length).map do |i|
        if array[i] < array[i-1]
          array[i], array[i-1] = array[i-1], array[i]
          swap_count += 1
          swap = true
        end
      end
    end
    sorted_array = array
    puts "Final result: #{sorted_array}"
    puts "Swaps: #{swap_count}"
  end
end

sequence = [5,4,3,2,1,0]
bubble = BubbleSort.new
bubble.sort_bubble(sequence)



