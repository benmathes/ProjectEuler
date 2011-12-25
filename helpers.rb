# start from 2 and build the prime factorization tree,
# keeping track of leaf nodes and finally returning those
def primeFactors(n, verbose = false, checked = {})

    if verbose then  puts "=======================" end

    pFactors = Array.new()

    # for pretty-printing verbosity
    if verbose then puts "looking at #{n}" end

    for d in 2..(Math.sqrt(n))

        # this acts asthe base case -- if we get below 2 this will always fail
        if divides?(d,n) then

            if verbose then puts " #{d} divides" end

            if checked[d] != true then 
                if primeFactors(d, verbose).length == 0
                    # if d is prime, add it.
                    if verbose then puts "#{d} is prime" end
                    pFactors.push(d)
                else
                    # if d is NOT prime, 
                    if verbose then puts " #{d} NOT prime" end
                    pFactors = pFactors | primeFactors(d, verbose)
                end
            else 
                if verbose then puts "already checked #{d}" end
            end
            checked[d] = true

            # and find the prime factors of d's co-divisor. 
            # if no factors, d's co-divisor is prime
            if checked[n/d] != true then 
                if primeFactors(n/d, verbose).length == 0 then
                    if verbose then puts "#{n/d} is prime" end
                    pFactors.push(n/d)
                else
                    pFactors = pFactors | primeFactors(n/d, verbose)
                end
            else
                if verbose then puts "already checked #{d}" end
            end

            checked[n/d] = true
        end
    end

    return pFactors
end


def divides?(a,b)
    return (Float(b)/a)%1 == 0
end
