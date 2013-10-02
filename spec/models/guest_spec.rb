require 'spec_helper'

describe Guest do
	describe "#create" do
		it "create a valid new user" do
			jim = Guest.create(first_name: "Jim", last_name: "Jackson", email: "jim.jackson@example.com",
				password: "password", password_confirmation: "password")
			jim.valid?.should eq(true)
		end
	end

	describe "#rsvp" do
		it "should add user to the guest list" do
			jim = Guest.create(first_name: "Jim", last_name: "Jackson", email: "jim.jackson@example.com",
				password: "password", password_confirmation: "password")
			party = Event.new(date_and_time: Date.new(2013, 11, 10, 22), title: "Party", description: "All night long")
			jim.rsvp(party)
			party.guest_list[0].first_name.should eq("Jim")
		end
	end
end
