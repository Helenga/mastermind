class Main  
	require_relative 'mastermind'		
	require_relative 'number'
	
	include Mastermind
	
	def initialize
		@attempts = 12
		@ridle = Number.make_number
	end
	def game
		puts 'Hi! I made a random four-digit number. You have 12 guesses to unravel it.'
		12.downto(1) do
			@statistic = {cow: 0, bull: 0}
			@attempts -= 1
			print 'Your guess >> '
			@guess = gets.chomp
			@statistic = check(@guess)
			unravel? ? victory : show_statistic
		end
		puts "Sorry. Your attempts ended..." +
				"The ridle was #{@ridle.join}"
		exit
	end
end

session = Main.new
session.game
