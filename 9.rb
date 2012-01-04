=begin

A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

a**2 + b**2 = c**2
For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

=end


# the really stupid way of doing this, which took about 4 minutes, was to just check all triplets (a,b,c) where a, b, c < 1000
# however, you have two restraints, namely a**2 + b**2 = c**2, and a+b+c = 1000. 
for a in 1..1000 do
    # we subtract a since a+b+c = 1000, so b+c = 1000-a
    for b in 1..(1000-a) do
        # this is one of our constraints.
        c = Math.sqrt(a**2 + b**2)
        if a+b+c == 1000
            puts "MAGIC: #{a}^2 + #{b}^2 = #{c}^2"
            puts "a*b*c = #{a*b*c}"
            exit
        end
    end
end




