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
				count.has_key?(c) ? count[c] += 1 : count[c] = 1
			end
		end
		count.largest_key.first
	end

	def least_occurring
		count = {}
		@input_text.split(//).each do |c|
			unless c.blank?
				count.has_key?(c) ? count[c] += 1 : count[c] = 1
			end
		end
		count.smallest_key.first
	end

end