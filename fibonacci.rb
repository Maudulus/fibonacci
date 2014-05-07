def fibonacci(nth_number)
	previous_number = 0 
	prev_holder = ""
	fibonacci = 1

	(nth_number - 1).times do |double_number_size|
		prev_holder = fibonacci
		fibonacci += previous_number 
		previous_number = prev_holder
	end 

	puts fibonacci
end 	

