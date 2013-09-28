class CreateMyDistricts < ActiveRecord::Migration
  def change
    create_table :my_districts do |t|
      t.integer :sigungu_id
      t.integer :position_id

      t.timestamps
    end
  end
end
