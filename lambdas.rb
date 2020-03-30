def square_of_sum (my_array, proc_square, proc_sum)
    sum = proc_sum.call(my_array)
    proc_square.call(sum)
end

proc_square_number = lambda do |sum| 
	return sum ** 2
end

proc_sum_array = lambda do |array|
    s = 0
    for a in array do
        s += a
    end
    return s
end

my_array = [10, 4, 2, 1] #gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)