class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|
      t.string :name
      t.string :birthday_date

      t.timestamps
    end
  end
end
