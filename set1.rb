module Set1
  def self.swap_small(array)
    #This is an example of 0(n)
    if array.length == 1
      array
    elsif array.length == 2
       array.sort
    else
    first = array[0] 
    min = array.min # --> Minimum Value
    minindex = array.find_index(array.min) # --> Finds index of the min value
    array[minindex] = first  #---> Swaps the first element into the min value index
    array[0] = min # --> Swpas the min value into the first index
    array
  end
  end

  def self.find_sum_2(array, sum = 0)
    # This is an example of 0(n^2)
    if array.empty? 
      false
    elsif array.include?(0) 
      true
    else

    array.each do |x|
      if x < 0
        if array.include?(x.abs)
          return true
        end
      end
    end

    array.each do |x| 
    if x + x == 0
      return true
    else
      return false
    end
    end
  end
end

  def self.find_sum_3(array,sum=0)
    #This is an example of O(n^3)
   if array.length == 0
      return false
    end

    array.each do |x|
      array.each do |y|
        array.each do |z|
          if (x + y + z == sum)
            return true
          end
        end
      end
    end
      return false
  end

end
