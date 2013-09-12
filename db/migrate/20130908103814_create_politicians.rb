class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string :name
      t.date :birthday
      t.integer :party_id,  default: 0
      t.string :profile_img
      t.string :bg_img

      t.timestamps
    end
  end
end
