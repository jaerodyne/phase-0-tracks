#Get spy's real name
#Swap first and last name
#Change each vowel in name to next vowel {ex: a => e, e => i, etc.}
#Change each consonant in name to next consonant {ex: b => c, c => d, etc.}
#Ex: Felicia Torres => Vussit Gimodoe

#Subtract vowels from alphabet?

def next_vowel(str)
  str.gsub!(/[aeiou]/, 'a' => 'e', 'e' => 'i', 'i' => 'o', 'o' => 'u', 'u' => 'a')
  puts str
end

next_vowel('aeiou')
