require 'pry'
def find_closing_parenthesis(sentence, open_position)
	opening_count = 0
	curl_index = 0
	sentence.each_char do |curl|
		if curl == "("
			opening_count += 1
			curl_index = sentence.index(/[\)]/,curl_index+1)
		end
		if opening_count == open_position
			return sentence.index(/[\)]/,curl_index)
		end
	end
end
