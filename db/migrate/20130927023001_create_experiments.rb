class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :title
      t.text :description
      t.string :index_link

      t.timestamps
    end
  end
end
