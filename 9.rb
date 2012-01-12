=begin

A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

a**2 + b**2 = c**2
For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

=end


cap = 1000

# the really stupid way of doing this, which took about 4 minutes, was to just check all triplets (a,b,c) where a, b, c < 1000
# however, you have two restraints, namely a**2 + b**2 = c**2, and a+b+c = 1000. 
# addition is associative (symmetric), so we only need to chek <cap/2 against >=(cap/2)
for a in 1..cap/2 do

    # we subtract a since a+b+c = cap, so b+c = cap-a, and 
    for b in 1..(cap-a) do

        # this is one of our constraints, i.e. if we have a and b, c is fixed.
        c = Math.sqrt(a**2 + b**2)
        
        # Math.sqrt() might not return an int, that's what c%1 == 0 is checking (is it in N)
        if c%1 == 0 && a+b+c == cap
            puts "MAGIC: #{a}^2 + #{b}^2 = #{c}^2"
            puts "a*b*c = #{a*b*c}"
            exit
        end
    end
end




