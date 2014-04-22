class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :manifesto_id
      t.integer :user_id
      t.string :status,         default: "normal", limit: 10
      t.text :content
      t.integer :agree_cnt,     default: 0
      t.integer :disagree_cnt,  default: 0

      t.timestamps
    end
  end
end
