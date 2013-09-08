class CreateManifestos < ActiveRecord::Migration
  def change
    create_table :manifestos do |t|
      t.integer :politician_id
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end