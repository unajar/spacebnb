class RemoveConfirmedFromReservations < ActiveRecord::Migration[6.0]
  def change
    remove_column :reservations, :confirmed, :boolean
  end
end
