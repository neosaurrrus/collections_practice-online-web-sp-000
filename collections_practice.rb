def sort_array_asc(arr)
  arr.sort
end

def sort_array_desc(arr)
  arr.sort do | a, b |
    b <=> a
  end
end

def sort_array_char_count(arr)
  arr.sort do | a, b |
    a.length <=> b.length
  end
end

def swap_elements(arr)
  holding = arr[2]
  arr[2] = arr[1]
  arr[1] = holding
  return arr
end

def reverse_array(arr)
  return arr.reverse
end

def kesha_maker(arr)
  arr.each do |word|
    word_array = word.split('')
    word_array.each_with_index do | char, index |
      if (index == 2)
        char[index] = "$"
      end
    end
  end
  arr
end
