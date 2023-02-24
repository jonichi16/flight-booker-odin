class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.references :departure_airport, type: :integer, null: false, foreign_key: { to_table: :airports }
      t.references :arrival_airport, type: :integer, null: false, foreign_key: { to_table: :airports }
      t.datetime :date
      t.integer :duration

      t.timestamps
    end
  end
end
