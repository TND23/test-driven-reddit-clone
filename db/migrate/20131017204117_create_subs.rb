class CreateSubs < ActiveRecord::Migration
  def change
    create_table :subs do |t|
      t.integer :moderator_id, null: false
      t.string :name, null: false
      t.timestamps
    end
  end
end
