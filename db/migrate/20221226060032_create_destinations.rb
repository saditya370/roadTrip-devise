class CreateDestinations < ActiveRecord::Migration[7.0]
  def change
    create_table :destinations do |t|
      t.string :address
      t.decimal :latitude  , precision: 10, scale: 6
      t.decimal :longitude , precision: 10, scale: 6
      t.integer :position
      t.references :trip, null: false, foreign_key: true

      t.timestamps
    end
  end
end
