class CreateManifestos < ActiveRecord::Migration
  def change
    create_table :manifestos do |t|
      t.integer :winner_id
      t.string :title
      t.text :description
      t.integer :reply_cnt, default: 0
      t.integer :good_cnt,  default: 0
      t.integer :fair_cnt,  default: 0
      t.integer :poor_cnt,  default: 0

      t.timestamps
    end
  end
end
