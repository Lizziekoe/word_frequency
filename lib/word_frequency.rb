class String
	define_method(:word_frequency) do |match_word|

		if self.include?(match_word)
			string_to_array = self.split()
			string_to_array.count(match_word)
			
		end
	end
end