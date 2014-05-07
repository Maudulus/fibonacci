require 'benchmark'
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
puts Benchmark.measure { fibonacci(1000) } # 0.003seconds
puts Benchmark.measure { fibonacci(10000) } # 0.015 seconds
puts Benchmark.measure { fibonacci(100000) } # 0.646 seconds
puts Benchmark.measure { fibonacci(1000000) } #41.755 seconds


