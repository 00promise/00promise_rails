class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.string  :name,    null: false
      t.date    :held_on, null: false
      t.boolean :enabled, default: true
      t.integer :ord,     default: 999

      t.timestamps
    end
  end
end
