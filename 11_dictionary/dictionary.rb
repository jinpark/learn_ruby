class Dictionary
	attr_accessor :entries

	def initialize
		@entries = {}
	end 

	def add hash
		if hash.is_a? String
			newhash = Hash[hash => nil]
			self.entries.merge!(newhash)
		else
			self.entries.merge!(hash)
		end
	end

	def keywords
		self.entries.keys.sort
	end

	def include? keys
		self.entries.has_key?(keys)
	end

=begin
	def find keys
		newhash = {}
		if self.entries.empty? == false
			for i in 0..self.entries.length - 1
				if self.entries[i][0..keys.length - 1] == keys
					newhash.merge!({keys => self.entries[keys]})
				else
					self.entries.merge {}
				end
			end
		else
			return {}
		end
		newhash
	end
=end

	def find(word)
		hash = {}
		@entries.each do |key,value|
			if key[0...word.length] == word 
				hash[key] = value
			end
		end

		hash
	end

	def printable
		@entries.sort.collect do |key,value|
			"[#{key}] \"#{value}\""
		end.join("\n")
	end

end