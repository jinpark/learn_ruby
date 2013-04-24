class RPNCalculator

	attr_reader :calculator

	def initialize
		@calculator = []
	end

	def push num
		calculator << num
	end


	def plus 
		if calculator.count < 2
			raise "calculator is empty"
		else 
			sum = calculator[-2] + calculator[-1]
			calculator.pop(2)
			calculator << sum
		end
	end

	def minus
		if calculator.count < 2
			raise "calculator is empty"
		else 
			sub = calculator[-2] - calculator[-1]
			calculator.pop(2)
			calculator << sub
		end
	end

	def times
		if calculator.count < 2
			raise "calculator is empty"
		else 
			mul = calculator[-2] * calculator[-1]
			calculator.pop(2)
			calculator << mul
		end
	end

	def divide
		if calculator.count < 2
			raise "calculator is empty"
		else 
			div = calculator[-2].to_f / calculator[-1]
			calculator.pop(2)
			calculator << div
		end
	end

	def value
		calculator[-1]
	end

	def tokens string
		splitstring = string.split(' ')
		for i in 0..splitstring.length - 1
			if ["*","/","-","+"].include? splitstring[i]
				splitstring[i] = splitstring[i].to_sym
			else
				splitstring[i] = splitstring[i].to_i
			end
		end
		splitstring
	end




end
