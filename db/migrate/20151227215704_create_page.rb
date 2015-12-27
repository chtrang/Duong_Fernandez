class CreatePage < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :number
      t.integer :word
    end
  end
end
