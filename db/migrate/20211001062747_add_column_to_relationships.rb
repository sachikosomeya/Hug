class AddColumnToRelationships < ActiveRecord::Migration[6.1]
  def change
    add_column :relationships, :following_id, :integer
    add_column :relationships, :follower_id, :integer
  end
end
