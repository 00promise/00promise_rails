class CreateReplyEvaluations < ActiveRecord::Migration
  def change
    create_table :reply_evaluations do |t|
      t.integer :reply_id
      t.integer :user_id
      t.string :eval_type

      t.timestamps
    end
  end
end
