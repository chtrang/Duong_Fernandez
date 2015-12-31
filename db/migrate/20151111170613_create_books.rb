class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :synopsis
      t.attachment :cover
      t.integer :note
      t.integer :situation
      t.integer :page_id


      t.timestamps
    end
  end
end
