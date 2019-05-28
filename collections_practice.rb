def sort_array_asc(arr) # Sort in ascending order
  arr.sort
end

def sort_array_desc(arr) # Sort in descending order
  arr.sort do | a, b |
    b <=> a
  end
end

def sort_array_char_count(arr) # sort by length of each element
  arr.sort do | a, b |
    a.length <=> b.length
  end
end

def swap_elements(arr) # swap two values in the array
  holding = arr[2]
  arr[2] = arr[1]
  arr[1] = holding
  return arr
end

def reverse_array(arr) # reverse the array
  return arr.reverse
end

def kesha_maker(arr) # make the 3rd character a dollar
  new_word_array = []
  arr.each do |word|
    word_array = word.split('')
    word_array[2] = "$"
    new_word_array << word_array.join("")
  end
  new_word_array
end

def find_a(arr) #make a new array only containing elements that start with an 'a'
  new_arr = arr.select do |str|
    if str[0] == "a"
      str
    end
  end
  new_arr
end

def sum_array(arr) #Use inject to sum all numbers in this array
 total = arr.inject(0) {|result, element| result + element }
end

def add_s(arr) # Add "s" to all elements of the array except the 2nd;
  newArr = arr.each_with_index.collect { |element, index| index != 1 ? element << "s" : element}

end
