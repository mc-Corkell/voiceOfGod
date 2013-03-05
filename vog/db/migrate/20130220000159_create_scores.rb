class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
        t.references :round
	t.references :poet
	t.decimal :score1
	t.decimal :score2
	t.decimal :score3
	t.decimal :score4
	t.decimal :score5
	t.decimal :time
	t.boolean :has_time_deduction
	t.decimal :time_deduction
	t.boolean :disqualified 
	t.decimal :finalScore
        t.timestamps
    end
  end
end
