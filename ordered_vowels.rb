class OrderedVowels

	attr_accessor :words, :vowels, :words_with_sorted_vowels

	def initialize
		@words = ['boat', 'free', 'loot', 'double', 'nickle']
		@words_with_sorted_vowels = []
	end

	def ordered_vowel_word?
		vowels_included = []
		@words.each do |word|
			word.chars.each do |word|
				if word.include?('a') or word.include?('e') or word.include?('i') or word.include?('o') or word.include?('u')
					vowels_included << word.chars
					vowels_included.each do |letters|
						if letters.sort == vowels_included
							@words_with_sorted_vowels << word
						end
					end
				end
				puts @words_with_sorted_vowels
			end
		end
	end
end







