class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.string :name
      t.date :held_on
      t.date :term_started_on
      t.date :term_ended_on
      t.string :note

      t.timestamps
    end
  end
end
