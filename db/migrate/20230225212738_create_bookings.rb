class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :flight, type: :integer, null: false, foreign_key: { to_table: :flights }
      t.references :passenger, type: :integer, null: false, foreign_key: { to_table: :passengers }

      t.timestamps
    end
  end
end
