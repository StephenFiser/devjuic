class Hash	
	def max_key
	  max = values.max
	  max_set = select_set max
	  max_set.keys.max
	end

	def min_key
		min = values.min
    min_set = select_set min
    min_set.keys.min	
	end

	def select_set val
		select { |key, value| value == val }
	end
end

class String
	def to_frequency_hash
		freqency_hash = {}
		each_char do |c|
			if c.match(/^[a-zA-Z0-9]+$/)
				s = c.upcase.to_sym
				freqency_hash.has_key?(s) ? freqency_hash[s] += 1 : freqency_hash[s] = 1
			end
		end
		freqency_hash
	end
end
