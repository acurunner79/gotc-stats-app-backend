class AddForeignKeyToInfantries < ActiveRecord::Migration[6.1]
  def change
    add_column :infantries, :user_id, :integer
  end
end
