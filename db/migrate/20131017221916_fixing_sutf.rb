class FixingSutf < ActiveRecord::Migration
  def change
    remove_column :links, :sub_id
    add_column :links, :link_sub_id, :integer
  end
end
