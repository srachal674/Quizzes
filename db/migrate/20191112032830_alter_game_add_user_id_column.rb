class AlterGameAddUserIdColumn < ActiveRecord::Migration[5.2]
  
  def change
    add_column :game, :user_id, :integer
    add_index :game, :user_id
  end
end
