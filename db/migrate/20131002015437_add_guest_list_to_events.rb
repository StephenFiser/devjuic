class AddGuestListToEvents < ActiveRecord::Migration
  def change
  	add_column :events, :guest_list, :text
  end
end
