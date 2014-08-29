class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :title
      t.string :press
      t.references :issue
      t.string :url

      t.timestamps
    end
  end
end
