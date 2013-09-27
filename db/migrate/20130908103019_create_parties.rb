class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string  :name
      t.boolean :visible,   default: true
      t.integer :ord,       default: 999
      t.date    :founded_on

      t.timestamps
    end
  end
end
