class Character
	attr_reader :input_text

	def self.test
		"testing"
	end

	def initialize input_text
		@input_text = input_text
	end

	def most_occurring
		count = {}
		@input_text.split(//).each do |c|
			unless c.blank?
				x = c.to_sym
				count.has_key?(x) ? count[x] += 1 : count[x] = 1
			end
		end
		count.largest_hash_key 
	end
end