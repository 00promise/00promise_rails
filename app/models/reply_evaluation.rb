class ReplyEvaluation < ActiveRecord::Base
  attr_accessible :eval_type, :reply_id, :user_id
  belongs_to :reply
end
