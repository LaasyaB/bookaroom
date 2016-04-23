class CreateReservationTypes < ActiveRecord::Migration
  def change
    create_table :reservation_types do |t|
      t.string :title
      t.text :description
      t.references :reservation, index: true

      t.timestamps
    end
  end
end
