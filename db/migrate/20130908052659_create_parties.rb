class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.integer :chairman_id
      t.integer :assembly_leader_id
      t.date :founded_on

      t.timestamps
    end
  end
end
