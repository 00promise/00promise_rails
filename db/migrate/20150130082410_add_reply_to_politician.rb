class AddReplyToPolitician < ActiveRecord::Migration
  def change
    add_column :politicians, :replies_count, :integer, null: false, default: 0
  end
end
