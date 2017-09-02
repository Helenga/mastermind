class Number
	def self.make_number
		number = []
		number[0] = rand(1..9)
		1.upto(3) do
			number << rand(0..9)
		end
		number
	end
end
