class AddPolymorphicToReply < ActiveRecord::Migration
  def change
    add_column :replies, :replyable_id, :integer
    add_column :replies, :replyable_type, :string
    add_index :replies, :replyable_id
    add_index :replies, :replyable_type

    add_column :manifestos, :replies_count, :integer, null: false, default: 0
    add_column :versus, :replies_count, :integer, null: false, default: 0
  end
end
