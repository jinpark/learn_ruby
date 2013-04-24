class Array

	def sum
		if self == []
			return 0
		else 
			self.inject { |result, element| result + element }
		end
	end

	def square
		if self == []
			return []
		else
			self.map { |a| a**2 }
		end
	end

	def square!
		if self == []
			return []
		else
			self.map! { |a| a**2 }
		end
	end

end