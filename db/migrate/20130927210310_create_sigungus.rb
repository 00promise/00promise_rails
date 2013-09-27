class CreateSigungus < ActiveRecord::Migration
  def change
    create_table :sigungus do |t|
      t.integer :sido_id
      t.string :name
      t.string :full_name
      t.integer :code

      t.timestamps
    end
  end
end
