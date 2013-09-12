class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :manifesto_id
      t.integer :user_id
      t.integer :grade

      t.timestamps
    end
  end
end
