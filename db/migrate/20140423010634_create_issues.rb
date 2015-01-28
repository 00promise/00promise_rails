class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.string :title
      t.integer :replies_count, default: 0
      t.references :link

      t.timestamps
    end
  end
end
