class CreateRoomTypes < ActiveRecord::Migration
  def change
    create_table :room_types do |t|
      t.references :room, index: true

      t.timestamps
    end
  end
end
