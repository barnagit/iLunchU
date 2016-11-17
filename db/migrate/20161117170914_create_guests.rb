class CreateGuests < ActiveRecord::Migration[5.0]
  def change
    create_table :guests do |t|
      t.references :User, foreign_key: true
      t.references :Lunch, foreign_key: true

      t.timestamps
    end
  end
end
