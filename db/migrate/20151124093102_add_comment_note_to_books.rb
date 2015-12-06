class AddCommentNoteToBooks < ActiveRecord::Migration
  def change
    change_table :books do |t|
    t.integer :note
    t.string :comment
	end
  end
end
