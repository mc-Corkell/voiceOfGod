class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.references :slam
      t.integer :numPoets
      t.integer :roundNumber #first round, second round, etc.
      t.timestamps
    end
  add_index :rounds, :slam_id
  end
end
