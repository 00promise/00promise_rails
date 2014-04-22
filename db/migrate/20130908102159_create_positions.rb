class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.string  :name
      t.string  :type_name
      t.integer :type_code
      t.string  :district
      t.boolean :enabled, default: true

      t.timestamps
    end
  end
end
