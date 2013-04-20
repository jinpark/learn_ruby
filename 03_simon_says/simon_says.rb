def echo(string)
	return string
end

def shout(string)
	return string.upcase
end

def repeat(string, num = 2)
	repeatstring = ''
	for i in 1..num
		repeatstring << string + ' '
	end
	repeatstring.chop
end

def start_of_word(string, num)
	string[0..num-1]
end

def first_word(string)
	string.split()[0]
end

def titleize(string)
	splitstring = string.split()
	titlestring = ''
	titlestring << splitstring[0].capitalize
	for i in 1..splitstring.length - 1
		if splitstring[i] == 'the' or splitstring[i] == 'over' or splitstring[i] == 'and' 
			titlestring << ' ' + splitstring[i]
		else
			titlestring << ' ' + splitstring[i].capitalize
		end
	end
	titlestring
end