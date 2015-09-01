class Word < ActiveRecord::Base
	def compareWords
		self.palavra1.downcase.chars.sort == self.palavra2.downcase.chars.sort
	end
	
before_save :is_anagram
  def is_anagram		
	self.isAnagram = compareWords
	return true
  end
end
