class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :sport
      t.string :skill_level
      t.datetime :time
      t.float :latitude
      t.float :longitude
      t.integer :owner
      t.timestamps
    end
  end
end
