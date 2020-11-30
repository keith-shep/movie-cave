class CreateCinemas < ActiveRecord::Migration[6.0]
  def change
    create_table :cinemas do |t|
      t.string :location
      t.integer :capacity
      t.integer :price
      t.string :movie_selection
      t.string :description
      t.integer :screen_size
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
