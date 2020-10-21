def bubble_sort(start_arr)

  # create a second array that mirrors the starting array, this is what will return
  sorted_arr = start_arr

  
  # outer loop - repeatedly iterate until there are no more swaps required
  loop do

    # variable to track whether any swap has occurred
    swapped = false

    # inner loop - iterate through 1 less time than the length of the array, this compensates for the arr[i + 1]
    (sorted_arr.length - 1).times do |i|
      # check if the current array item is higher than the next array item
      if sorted_arr[i] > sorted_arr[i + 1]
        # if it is then swap the positions
        sorted_arr[i], sorted_arr[i + 1] = sorted_arr[i + 1], sorted_arr[i]
        # also change the swapped variable to true
        swapped = true
      end
    end

    # outer loop stops when no further swaps required
    break if swapped == false
  end

  p sorted_arr

end

bubble_sort([4,3,78,2,0,2])