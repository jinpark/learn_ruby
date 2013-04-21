def translate(string)
	splitstrings = string.split()
	alphabet = ('a'..'z').to_a
	vowels = ['a','e','i','o','u']
	consonents = alphabet - vowels
	phenome = ['sch','qu']
	newsplitstrings = []
	for i in 0..splitstrings.length - 1
		if vowels.include?(splitstrings[i][0,1])
			splitstrings[i] << 'ay'
		elsif consonents.include?(splitstrings[i][0,1]) && consonents.include?(splitstrings[i][1,1]) && consonents.include?(splitstrings[i][2..2])
			takefirst = splitstrings[i].slice!(3..splitstrings[i].length - 1)
			splitstrings[i].insert(0, takefirst)
			splitstrings[i] << 'ay'
		elsif consonents.include?(splitstrings[i][0,1]) && splitstrings[i][1,2	] == 'qu'
			takefirst = splitstrings[i].slice!(3..splitstrings[i].length - 1)
			splitstrings[i].insert(0, takefirst)
			splitstrings[i] << 'ay'
		elsif consonents.include?(splitstrings[i][0,1]) && consonents.include?(splitstrings[i][1,1])
			takefirst = splitstrings[i].slice!(2..splitstrings[i].length - 1)
			splitstrings[i].insert(0, takefirst)
			splitstrings[i] << 'ay'
		elsif splitstrings[i][0,2] == 'qu'
			takefirst = splitstrings[i].slice!(2..splitstrings[i].length - 1)
			splitstrings[i].insert(0, takefirst)
			splitstrings[i] << 'ay'
		elsif consonents.include?(splitstrings[i][0,1])
			takefirst = splitstrings[i].slice!(1..splitstrings[i].length - 1)
			splitstrings[i].insert(0, takefirst)
			splitstrings[i] << 'ay'
		end
		puts splitstrings[i]
		newsplitstrings.push(splitstrings[i])
	end
	return newsplitstrings.join(" ")
end

translate('square')
