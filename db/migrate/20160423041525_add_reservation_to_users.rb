class AddReservationToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :reservation, index: true
  end
end
