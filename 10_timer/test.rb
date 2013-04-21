def padded nums
	if nums < 10
		return "0" + nums.to_s
	else
		return nums.to_s
	end
end

def time_string seconds
	hms = [0,0,0]
	hms[1,2] = seconds.divmod(60)
	hms1 = hms[1]
	hms[0,1] = hms1.divmod(60)
	puts hms
	puts hms[0], hms[1], hms[2]
	puts padded(hms[0]) + ":" + padded(hms[1]) + ':' + padded(hms[2])
end

time_string(12)