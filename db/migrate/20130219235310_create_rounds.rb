class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :slam_id
      t.integer :numPoets
      t.integer :roundNumber #first round, second round, etc.
      t.timestamps
    end
  end
end
