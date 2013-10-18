class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :sub_id
      t.integer :user_id
      t.string :title, null: false
      t.string :url, null: false
      t.text :content
      t.timestamps
    end
  end
end
