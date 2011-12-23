bigComp = 600851475143

def primeFactors(n)
    primeFactors = {}
    for d in 2...(Math.sqrt(n))
        if divides(d,n)
            primeFactors[d] = true
            
            primeFactors[n/d] = true
    end
    return foundDivider ? false : true
end

def divides?(a,b)
    return Float(a/b)%1 == 0
end



puts(divides(3,7))
puts(divides(3,6))
