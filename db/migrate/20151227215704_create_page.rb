class CreatePage < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :description
      t.integer :book_id
    end
  end
end
