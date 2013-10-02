require 'spec_helper'

describe Event do
	describe "serializing the guest list" do
		it "should serialize the guest list" do
			jim = Guest.create(first_name: "Jim", last_name: "Jackson", email: "jim.jackson@example.com",
				password: "password", password_confirmation: "password")
			party = Event.create(
				date_and_time: Date.new(2013, 11, 10, 22), 
				title: "Party", description: "All night long",
				guest_list: []
				)
			party.guest_list << jim
			party.guest_list[0].first_name.should eq("Jim")
		end
	end
end
