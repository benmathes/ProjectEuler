=begin
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

What is the 10 001st prime number?
=end

require 'helpers.rb'

n = 10001
primes = [2]
test = 3
until primes.length >= n do
    if primeFactors(test).length == 0 then
        primes.push(test)

        if rand(100) == 0 then
            puts "the #{primes.length}th prime is #{10001}"
        end
    end
    test += 2 # 2 is the only even prime
end

puts "the #{n}th prime is #{primes[-1]}"








