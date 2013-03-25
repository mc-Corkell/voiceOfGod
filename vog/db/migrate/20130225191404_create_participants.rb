class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.references :poet
      t.references :slam
      t.integer :letterOrder #ABCD - determines order in round 
      t.text :howHeard # description of how the poet knew about the slam
      # for advertising analysis
      t.timestamps
     end
  end
end
