class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
        t.integer :round_id
	t.integer :poet_id
	t.decimal :score1
	t.decimal :score2
	t.decimal :score3
	t.decimal :score4
	t.decimal :score5
	t.decimal :time
	t.boolean :time_deduction
	t.decimal :time_deduction
	t.boolean :disqualified 
	t.decimal :finalScore
        t.timestamps
    end
  end
end
