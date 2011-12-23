sum = 0

for i in 3...1000
    if (i%5 == 0 || i%3 == 0)
        sum = sum + i
    end
end

puts sum
