class CreateLunches < ActiveRecord::Migration[5.0]
  def change
    create_table :lunches do |t|
      t.string :title
      t.text :food
      t.integer :max_guests
      t.datetime :date
      t.string :location
      t.references :User, foreign_key: true

      t.timestamps
    end
  end
end
