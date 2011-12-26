=begin

2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

=end

require 'helpers.rb'


# this is certainly not the most elegant solution, it basically brute forces it
# takes about 1ish minute to run on my laptop

upTo = 20
found = false

test = upTo
while !found do
    notAllDivide = false
    # puts "checking #{test}"
    for j in 2..upTo do
        if not divides?(j,test) 
            # puts "  #{j} doesn't divide"
            notAllDivide = true
            break
        end
    end

    if notAllDivide 
        # if test isn't divisible by them all, you can skip ahead by the largest 
        # possible divider.
        test += upTo
    else 
        puts test
        exit
    end
end


