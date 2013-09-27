class CreateWinners < ActiveRecord::Migration
  def change
    create_table :winners do |t|
      t.integer :election_id
      t.integer :position_id
      t.integer :politician_id
      t.integer :party_id
      t.boolean :present,       default: true

      t.timestamps
    end
  end
end
