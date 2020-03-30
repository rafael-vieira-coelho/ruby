def take(lista, elem=1)
    (0..elem).step(1) do |n|
        lista.delete(n)
    end
    lista
end

puts take([1, 2, 3],2)