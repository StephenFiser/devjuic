class Character
	attr_reader :input_text


	def self.test
		"testing"
	end

	def initialize input_text
		@input_text = input_text
	end

	%w(largest smallest).each do |size|
		define_method "#{size}_frequency" do
			count = {}
			@input_text.split(//).each do |c|
				unless c.blank?
					count.has_key?(c) ? count[c] += 1 : count[c] = 1
				end
			end
			__method__ == :largest_frequency ? count.largest_key.first : count.smallest_key.first
		end
	end
end