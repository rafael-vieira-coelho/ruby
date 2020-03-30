def element_at(arr, index)
    arr[index]
end

def inclusive_range(arr, start_pos, end_pos)
    arr[start_pos..end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
    arr[start_pos...end_pos]
end

def start_and_length(arr, start_pos, length)
    arr[start_pos,length]
end

def neg_pos(arr, index)
    arr[-index]
end

def first_element(arr)
    arr.first
end

def last_element(arr)
   arr.last
end

def first_n(arr, n)
    # return the first n elements of the array
    arr.take(n)
end

def drop_n(arr, n)
    # drop the first n elements of the array and return the rest
    arr.drop(n)
end

def end_arr_add(arr, element)
    # Add `element` to the end of the Array variable `arr` and return `arr`
    arr.insert(arr.length, element)
end

def begin_arr_add(arr, element)
    # Add `element` to the beginning of the Array variable `arr` and return `arr`
    arr.unshift(element)
end

def index_arr_add(arr, index, element)
    # Add `element` at position `index` to the Array variable `arr` and return `arr`
    arr.insert(index, element)
end

def index_arr_multiple_add(arr, index)
    # add any two elements to the arr at the index
    arr.insert(index, 1, 1)
end

# delete the element from the end of the array and return the deleted element
def end_arr_delete(arr)
  arr.pop
end

# delete the element at the beginning of the array and return the deleted element
def start_arr_delete(arr)
  arr.shift
end

# delete the element at the position #index
def delete_at_arr(arr, index)
  arr.delete_at(index)
end

# delete all the elements of the array where element = val
def delete_all(arr, val)
  arr.delete(val)
end

def select_arr(arr)
  # select and return all odd numbers from the Array variable `arr`
    arr.keep_if {|v| v % 2 != 0}
end

def reject_arr(arr)
  # reject all elements which are divisible by 3
    arr.delete_if {|v| v % 2 != 0}
end

def delete_arr(arr)
  # delete all negative elements
    arr.delete_if {|v| v < 0}
end

def keep_arr(arr)
  # keep all non negative elements ( >= 0)
    arr.keep_if {|v| v >= 0}
end

