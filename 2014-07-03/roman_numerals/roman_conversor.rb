class RomanConversor 

	NUMBER_ROMAN = {1000 => "M",
									500  => "D",
									100  => "C",
									50   => "L",
									10   => "X",
									5    => "V",
									1    => "I",
	}

	def to_roman(number)
		return NUMBER_ROMAN[number] if NUMBER_ROMAN.has_key?(number)
		 
		NUMBER_ROMAN.each do |k, v| 
			while number >= k do
				roman += v
				number -= k
			end
		end
		return roman
	end

end