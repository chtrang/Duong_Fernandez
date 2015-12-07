class AddNoteToBooks < ActiveRecord::Migration
  def change
    change_table :books do |t|
    t.integer :note
	end
  end
end
