class CreateSlams < ActiveRecord::Migration
  def change
    create_table :slams do |t|
      t.references :user
      t.string :name
      t.string :location
      t.string :date
      t.string :hostFirstName
      t.string :hostLastName
      t.integer :numWinners
      t.timestamps
    end
  add_index :slams, :user_id
  end
end
