class CreateSidos < ActiveRecord::Migration
  def change
    create_table :sidos do |t|
      t.string :name
      t.integer :ord

      t.timestamps
    end
  end
end
