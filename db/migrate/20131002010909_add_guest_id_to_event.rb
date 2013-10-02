class AddGuestIdToEvent < ActiveRecord::Migration
  	def change
	  	add_column :events, :guest_id, :integer
	end
end
