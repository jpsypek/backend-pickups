class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :sport
      t.integer :time
      t.string :date
      t.string :skill_level
      t.string :location
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
