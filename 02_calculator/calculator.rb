def add(num1, num2)
	sums = num1 + num2
	return sums
end

def subtract(num1, num2)
	sub = num1 - num2
	return sub
end

def sum(numarray)
	totalsum = 0
	for i in 0..numarray.length-1
		totalsum = totalsum + numarray[i]
	end
	return totalsum
end

def multiply(numarray)
	totalmult = 1
	for i in 0..numarray.length-1
		totalmult = totalmult * numarray[i]
	end
	return totalmult
end

def power(num1, num2)
	return num1**num2
end

def factorial(num)
	totalfact = 1
		for i in 1..num
			totalfact = totalfact * i
		end
	return totalfact
end
