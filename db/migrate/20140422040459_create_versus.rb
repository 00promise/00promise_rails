class CreateVersus < ActiveRecord::Migration
  def change
    create_table :versus, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :title, null: false
      t.text :description
      t.has_attached_file :bg_img
      t.integer :votes_count, null: false, default: 0
      t.integer :votes_l_count, null: false, default: 0
      t.integer :votes_r_count, null: false, default: 0
      t.integer :replies_cnt, null: false, default: 0
      t.datetime :start_date, default: Time.now, null: false
      t.datetime :end_date, default: Time.now, null: false
      t.boolean :versus, :visible, :boolean, default: false
      t.references :politician_l, null: false
      t.references :politician_r, null: false
      t.timestamps
    end
  end
end
