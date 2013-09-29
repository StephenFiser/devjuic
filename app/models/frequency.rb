class Frequency 
	attr_reader :input_text
	
	def initialize input_text
		@freq_hash = input_text.to_frequency_hash
	end

	def most_freq
		@freq_hash.max_key.to_s
	end

	def least_freq
		@freq_hash.min_key.to_s
	end

	def max
		@freq_hash.values.max
	end

	def min
		@freq_hash.values.min
	end

end
