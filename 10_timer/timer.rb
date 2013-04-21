class Timer
	attr_accessor :seconds

	def initialize
		@seconds = 0
	end

	def padded nums
		if nums < 10
			return "0" + nums.to_s
		else
			return nums.to_s
		end
	end

	def time_string
		hms = [0,0,0]
		hms[1,2] = @seconds.divmod(60)
		hms[0,2] = hms[1].divmod(60)
		padded(hms[0]) + ":" + padded(hms[1]) + ':' + padded(hms[2])
	end
end
