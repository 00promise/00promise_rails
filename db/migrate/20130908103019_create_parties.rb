class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.string :chairman_name
      t.string :assembly_leader_name
      t.date :founded_on

      t.timestamps
    end
  end
end
