class Fixnum

	NUMERALS = {
  1    => "I",
  4    => "IV",
  5    => "V",
  9    => "IX",
  10   => "X",
  40   => "XL",
  50   => "L",
  90   => "XC",
  100  => "C",
  400  => "CD",
  500  => "D",
  900  => "DM",
  1000 => "M"
}
def get_closest_arabic_number_from_hash(number)
  closest_number = NUMERALS.sort_by do |key, value| 
    key
  end.select do |arabic, roman| 
    arabic <= number
  end.last
end
	def to_roman
    solution = ''
    number = self
    while number > 0
      arabic,roman = get_closest_arabic_number_from_hash(number)
      solution << roman
      number = number - arabic
    end
      solution
  end

	def to_roman_crazy_sam
		solution = ''
		arabic = self
		if arabic > 9
			solution = 'X'
		  arabic -= 10 
    elsif arabic == 9
      solution = 'IX'
      arabic = 0
	  elsif arabic > 4
		  solution = 'V'
		  arabic -= 5 
		elsif arabic == 4
			solution = 'IV'
      arabic = 0
	  end
		solution += "I" * arabic
	end

end
