require 'helpers.rb'

pFactors =  primeFactors(600851475143);
puts "largest: #{pFactors[-1]}"
puts "all: #{pFactors.join(',')}"
