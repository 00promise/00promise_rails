class AddPaperclip < ActiveRecord::Migration
  def up
  	add_column :politicians, :img_file_name, :string # Original filename
    add_column :politicians, :img_content_type, :string # Mime type
    add_column :politicians, :img_file_size, :integer # File size in bytes

    add_column :politicians, :bg_img_file_name, :string # Original filename
    add_column :politicians, :bg_content_type, :string # Mime type
    add_column :politicians, :bg_file_size, :integer # File size in bytes

    add_column :parties, :img_file_name, :string # Original filename
    add_column :parties, :content_type, :string # Mime type
    add_column :parties, :file_size, :integer # File size in bytes
  end

  def down
  end
end
