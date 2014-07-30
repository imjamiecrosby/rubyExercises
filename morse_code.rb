# require 'pry'

class MorseCode

	attr_accessor :words, :letters, :encoded_letters, :encoded_words, :morse_code

	def initialize
		@words = ""
		@letters = ""
		@encoded_letters = ""
		@encoded_words = ""
		@morse_code = {
			"a" => ".-", "b" => "-...", "c" => "-.-.", "d" => "-..", "e" => ".", "f" => "..-.", "g" => "--.", "h" => "....",
	   		"i" => "..", "j" => ".---", "k" => "-.-", "l" => ".-..", "m" => "--", "n" => "-.", "o" => "---", "p" => ".--.",
  			"q" => "--.-", "r" => ".-.", "s" => "...", "t" => "-", "u" => "..-", "v" => "...-", "w" => ".--", "x" => "-..-",
  			"y" => "-.--", "z" => "--.."
		}
	end

	def encode(words)
		
		@encoded_words = ""
		@encoded_letters = "" 

		words.chars.each do |word|
			if word == " "
				@encoded_letters += "  "
			else 
				@encoded_letters += morse_code[word] + " "
			end
		end
		puts @encoded_letters.chop! unless @encoded_letters.nil?
	end
end






