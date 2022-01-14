class AddForeignKeyToCavalries2 < ActiveRecord::Migration[6.1]
  def change
    add_column :cavalries, :user_id, :integer
  end
end
