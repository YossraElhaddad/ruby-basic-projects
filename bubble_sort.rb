def bubble_sort(array)
    array_copy = array.map {|element| element}
  array_copy.each_index do |count|
    (1).upto(array.length - 1 - count) do |index|
       array_copy[index-1], array_copy[index] = array_copy[index], array_copy[index-1] if array_copy[index] < array_copy[index-1]
    end
  end
  array_copy
end