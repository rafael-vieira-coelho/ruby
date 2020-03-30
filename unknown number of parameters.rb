def full_name(first, *names)
    r = first
    for n in names
        r += ' ' + n
    end    
    r
end