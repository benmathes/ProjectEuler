sum = 0

i = 3
until i >= 1000
    if (i%5 == 0 || i%3 == 0)
        sum = sum + i
    end
    i = i+1
end

puts sum
