class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :cinema, null: false, foreign_key: true
      t.string :status
      t.string :review
      t.integer :rating
      t.integer :quantity
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
