=begin

A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

a**2 + b**2 = c**2
For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.

=end

for a in 1..1000 do
    for b in 1..1000 do
        for c in 1..1000 do
            if a**2 + b**2 == c**2 then
                puts "#{a}^2 + #{b}^2 = #{c}^2"
                if a+b+c == 1000
                    puts "MAGIC: #{a}^2 + #{b}^2 = #{c}^2"
                    puts "a*b*c = #{a*b*c}"
                    exit
                end
            end
        end
    end
end



