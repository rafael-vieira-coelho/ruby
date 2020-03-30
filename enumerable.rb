#In this challenge, your task is to complete the skip_animals method that takes an animals array and a skip integer and 
# returns an array of all elements except first skip number of items as shown in the example below.
#> skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2)
#=> ["2:fox", "3:wolf"]

def skip_animals(animals, skip)
  h = Array.new
  j = 0
  animals.each_with_index do |a, i|  
    h[j] = i.to_s + ':' + a unless i < skip
    j += 1  unless i < skip
  end
  return h
end

def func_any(h)
    # Check and return true if any key object within the hash is of the type Integer
    # If not found, return false.
    h.any? {|key, value| key.is_a? Integer}
end

def func_all(h)
    # Check and return true if all the values within the hash are Integers and are < 10
    # If not all values satisfy this, return false.
    h.all? {|key, value| value.is_a? Integer and value < 10}
end

def func_none(h)
    # Check and return true if none of the values within the hash are nil
    # If any value contains nil, return false.
    h.none? {|key, value| value == nil}
end

def func_find(h)
    # Check and return the first object that satisfies either of the following properties:
    #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20 
    #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
    h.find {|key, value| (key.is_a?Integer and value.is_a?Integer and value < 20) or (key.is_a?String and value.is_a?String and value.index('a') == 0)}
end

def group_by_marks(marks, pass_marks)
  	m = marks.group_by {|k, v| v < pass_marks}
  	m["Failed"] = m.delete(true)
  	m["Passed"] = m.delete(false)
  	return m
end

def group_by_marks2(marks, pass_marks)
    marks.group_by {|key, value| value<pass_marks ? "Failed" : "Passed"}
end
marks = {"Ramesh":23, "Vivek":40, "Harsh":88, "Mohammad":60}
puts group_by_marks2(marks, 30)
