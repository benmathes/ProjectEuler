# start from 2 and build the prime factorization tree,
# keeping track of leaf nodes and finally returning those
def primeFactors(n, checked = {})

    pFactors = Array.new()

    # check all #s up to the square root
    for d in 2..(Math.sqrt(n))

        # TODO: remove duplicate checking with the checked hash. logic is tricky

        # this is sort of the base case -- if we get below 2 this will always fail
        if divides?(d,n) 
            if primeFactors(d, checked).length == 0
                pFactors.push(d)
                checked[d] = true
            end

            pFactors = pFactors | primeFactors(n/d, checked)
        end
    end

    return pFactors
end


def divides?(a,b)
    return (Float(b)/a)%1 == 0
end
