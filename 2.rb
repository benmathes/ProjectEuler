
# init
prevFibNum = 1
thisFibNum = 2
sum = 0

until thisFibNum > 4000000
    # sum if even
    if thisFibNum%2 == 0
        sum = sum + thisFibNum
    end

    # next fib num
    thisFibNum = thisFibNum + prevFibNum
    prevFibNum = thisFibNum - prevFibNum
end


puts sum
