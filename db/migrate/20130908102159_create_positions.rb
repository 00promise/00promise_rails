class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string :name
      t.string :type_name
      t.integer :type_code
      t.string :district
      t.integer :politician_id

      t.timestamps
    end
  end
end
