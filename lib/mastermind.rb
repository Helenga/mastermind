module Mastermind
	
	def check(guess)
		guess = normalize(guess)
		guess.each_with_index do |value, index|
			ridle = Marshal.load(Marshal.dump @ridle)
			while ridle.include?(value)
			ridle_index = ridle.index(value)
			ridle_index == index ? @statistic[:bull] += 1 : @statistic[:cow] += 1
			ridle[ridle_index] = ''
			end
		end
		@statistic
	end
	
	def normalize(guess)
		guess.split('').map!{|e| e.to_i}
	end
	
	def unravel?
		@statistic[:bull] == 4
	end
	
	def victory
		puts "You are so clever! Won for #{@attempts}"
		exit
	end
	
	def show_statistic
		print "Wow! You get #{@statistic[:bull]} bulls\nAh! #{@statistic[:cow]} cows.\n"
		puts "You still have #{@attempts} guesses"
	end
end
