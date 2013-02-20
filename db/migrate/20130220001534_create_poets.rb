class CreatePoets < ActiveRecord::Migration
  def change
    create_table :poets do |t|
      t.string :poetName #must be unique, use first and lastname as one word, eg: KatieMcCorkell
      t.integer :phoneNumber
      t.timestamps
    end
  end
end
