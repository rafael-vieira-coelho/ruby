def factorial x
    if (x == 0)
        return 1
    end    
    return factorial(x - 1) * x
end

n = gets.to_i
puts factorial(n)