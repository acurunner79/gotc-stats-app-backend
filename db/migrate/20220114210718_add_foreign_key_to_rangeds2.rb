class AddForeignKeyToRangeds2 < ActiveRecord::Migration[6.1]
  def change
    add_column :rangeds, :user_id, :integer
  end
end
