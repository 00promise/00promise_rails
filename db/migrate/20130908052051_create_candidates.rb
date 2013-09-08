class CreateCandidates < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.integer :position_id
      t.integer :politician_id
      t.integer :number
      t.boolean :elected
      t.boolean :current

      t.timestamps
    end
  end
end
