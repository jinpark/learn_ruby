class Book
	attr_reader :title

	def title=(string)
		splitstring = string.split()
		titlestring = ''
		titlestring << splitstring[0].capitalize
		for i in 1..splitstring.length - 1
			if splitstring[i] == 'the' or splitstring[i] == 'in' or splitstring[i] == 'and' or splitstring[i] == 'a' or splitstring[i] == 'an' or splitstring[i] == 'of'
				titlestring << ' ' + splitstring[i]
			else
				titlestring << ' ' + splitstring[i].capitalize
			end
		end
		@title = titlestring
	end

end