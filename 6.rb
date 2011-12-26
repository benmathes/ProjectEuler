=begin

The sum of the squares of the first ten natural numbers is,

12 + 22 + ... + 102 = 385
The square of the sum of the first ten natural numbers is,

(1 + 2 + ... + 10)2 = 552 = 3025
Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025  385 = 2640.

Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

=end

upTo = 100

sumOfSquares = 0
squareOfSums = 0

for i in 1..upTo do
    sumOfSquares += i**2
    squareOfSums += i
end

squareOfSums = squareOfSums**2

puts "#{squareOfSums} - #{sumOfSquares} = #{squareOfSums - sumOfSquares}"
