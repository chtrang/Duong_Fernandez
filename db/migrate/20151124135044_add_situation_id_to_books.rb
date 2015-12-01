class AddSituationIdToBooks < ActiveRecord::Migration
  def change
  	change_table :books do |t|
    t.integer :situation_id
	end
	add_index :books, :situation_id
  end
end
