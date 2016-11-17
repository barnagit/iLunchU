class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :value
      t.text :text
      t.references :User, foreign_key: true
	  t.references :Lunch, foreign_key: true
	  
      t.timestamps
    end
  end
end
