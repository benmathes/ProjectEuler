=begin

A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 99.

Find the largest palindrome made from the product of two 3-digit numbers.

=end


# start from biggest

palindromes = Array.new()

for i in 999.downto(111) do
    for j in 999.downto(111) do
        product = i*j
        if product.to_s().reverse == product.to_s() then
            palindromes.push(product)
        end
    end
end


puts palindromes.sort()[-1]    
