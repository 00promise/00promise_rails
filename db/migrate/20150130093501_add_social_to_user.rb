class AddSocialToUser < ActiveRecord::Migration
  def change
    add_column :users, :nickname, :string, default: ""
    add_column :users, :social_id, :string, default: ""
    add_column :users, :img_file_name, :string # Original filename
    add_column :users, :img_content_type, :string # Mime type
    add_column :users, :img_file_size, :integer # File size in bytes
  end
end
