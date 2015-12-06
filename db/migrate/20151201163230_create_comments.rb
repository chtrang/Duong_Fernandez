class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user_name
      t.text :message
      t.integer :book_id

      t.timestamps
    end
  end
end
