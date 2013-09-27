require 'spec_helper'

describe Character do
	describe "#initialize" do
		it "returns a string" do
			char = Character.new("Here is a bunch of text")
			char.input_text.is_a?(String).should eq(true)
		end
	end


	describe "#largest_frequency" do
		it "should calculate most occurring character in given string" do
			char = Character.new("aaa bb c")
			char.largest_frequency.should eq("a")
		end
	end

	describe "#smallest_frequency" do
		it "should calculate least occurring character in given string" do
			char = Character.new("aaa bb c")
			char.smallest_frequency.should eq("c")
		end
	end
end
