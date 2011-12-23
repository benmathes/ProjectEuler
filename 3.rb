bigComp = 600851475143

# start from 1/2 of the way. crudest optimization. <3 fast computers.
currentTest = (600851475143/2).floor

largestPrime = nil

def prime?(n)
    foundDivider = false
    for d in 2..(Math.sqrt(n))
        foundDivider = ((n % d) == 0) or foundDivider
    end
    return foundDivider ? false : true
end

# quick and dirty
until currentTest <= 1
    if (Float(bigComp / currentTest) % 1) == 0 && prime?(currentTest)
        puts currentTest
        exit
    end
end

