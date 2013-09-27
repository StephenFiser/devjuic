require 'spec_helper'

describe Character do
	describe "#initialize" do
		it "returns a string" do
			char = Character.new("Here is a bunch of text")
			char.input_text.is_a?(String).should eq(true)
		end
	end


	describe "#most_occurring" do
		it "should calculate most occurring character in given string" do
			char = Character.new("aaa bb c")
			char.most_occurring.should eq([:a, 3])
		end
	end

	# describe "#least_occurring" do
	# 	it "should calculate least occurring character in given string" do

	# 	end
	# end
end
