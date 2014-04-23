class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes, :options => 'ENGINE=InnoDB DEFAULT CHARSET=utf8' do |t|
      t.references :versus
      t.references :user
      t.integer :vote_id
      t.timestamps
    end
  end
end
