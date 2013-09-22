class AddDescriptionToPost < ActiveRecord::Migration
  def change
  	add_column :posts, :description, :text
  	change_column :posts, :content, :text
  end
end
