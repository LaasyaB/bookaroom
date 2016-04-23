class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :location
      t.integer :capacity

      t.timestamps
    end
  end
end
