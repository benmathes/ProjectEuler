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

#reads better this way, to my math-y mind.
def divides?(a,b)
    return b%a == 0
end



# to generate the first (large) primes
# sieve of aristosthenes (or however that's pronounced, the Greek guy)
def primesUnder(cap)

    # start out optimistic: all numbers are prime
    isPrime = {}
    for i in 2..cap do
        isPrime[i] = true
    end

    # now come back to realistic expectations: mark off all multiples.
    for n in 2..cap do
        # make sure we haven't come across this as a composite # yet.
        # if we have, ignore.
        if isPrime[n] then 
            for aboveN in (n+1)..cap do
                if isPrime[aboveN] && divides?(n, aboveN) then
                    isPrime[aboveN] = false
                end
            end
        end
    end

    primes = []
    isPrime.keys.each do |n|
        if isPrime[n] then
            primes.push(n) 
        end
    end

    return primes
end


puts primesUnder(100)

# TODO: file IO.
