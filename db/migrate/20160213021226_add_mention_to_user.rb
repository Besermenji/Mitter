class AddMentionToUser < ActiveRecord::Migration
  def change
    add_column :users, :mentions_count, :integer, default: 0
  end
end
