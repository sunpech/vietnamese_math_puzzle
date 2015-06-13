#!/usr/bin/env ruby
#


@counter1 = 0
@counter2 = 0
@counter3 = 0
@total = 0
@ar = [1, 2, 3, 4, 5, 6, 7, 8, 9]

def formula(z)
	# so it looks nice
	a = z[0]
	b = z[1]
	c = z[2]
	d = z[3]
	e = z[4]
	f = z[5]
	g = z[6]
	h = z[7]
	i = z[8]

	# operation order matters, mult/div first, then add/subtract. always round up (0.8 = 1, 0.5 = 1, 0.3 = 0)
	# where to do the rounding?

	# round after any division to two decimal spots
	result = a + (13.0 * b / c).round(2) + d + (12 * e) - f - 11 + (g * h / i.to_f).round(2) - 10

	if result == 66
		# Two ways to format output here
		#puts a.to_s + " + (13 * " + b.to_s + " / " + c.to_s + ") + " + d.to_s + " + (12 * " + e.to_s + ") - " + f.to_s + " - 11 " + " + (" + g.to_s + " * " + h.to_s + " / " + i.to_s + ") - 10"

		# comment/uncomment below
		puts z.to_a.inspect

		@counter1 += 1
	end

	# round after any division to nearest whole number
	result = a + (13.0 * b / c).round + d + (12 * e) - f - 11 + (g * h / i.to_f).round - 10

	if result == 66
		# Two ways to format output here
		#puts a.to_s + " + (13 * " + b.to_s + " / " + c.to_s + ") + " + d.to_s + " + (12 * " + e.to_s + ") - " + f.to_s + " - 11 " + " + (" + g.to_s + " * " + h.to_s + " / " + i.to_s + ") - 10"

		# comment/uncomment below
		#puts z.to_a.inspect

		@counter2 += 1
	end

	# round only at the end
	result = (a + (13.0 * b / c) + d + (12 * e) - f - 11 + (g * h / i.to_f) - 10).round

	if result == 66
		# Two ways to format output here
		#puts a.to_s + " + (13 * " + b.to_s + " / " + c.to_s + ") + " + d.to_s + " + (12 * " + e.to_s + ") - " + f.to_s + " - 11 " + " + (" + g.to_s + " * " + h.to_s + " / " + i.to_s + ") - 10"

		# comment/uncomment below
		#puts z.to_a.inspect

		@counter3 += 1
	end


	@total += 1
end

@ar.permutation.to_a.each {|a| formula(a)}

puts "------------------------------"
puts @total.to_s + " iterations."
puts @counter1.to_s + " solutions (rounding after any division to two decimal spots, solution shown above.)"
puts "------------------------------"
puts @counter2.to_s + " solutions (rounding after any division to nearest whole number.)"
puts @counter3.to_s + " solutions (rounding only at the end.)"
