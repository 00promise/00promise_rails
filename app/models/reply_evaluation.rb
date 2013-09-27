class ReplyEvaluation < ActiveRecord::Base
  after_create :increment_reply_eval_cnt

  attr_accessible :eval_type, :reply_id, :user_id
  belongs_to :reply
  validates :eval_type, :inclusion => %w[A D]
  validates :reply_id, :presence => true
  validates :user_id, :presence => true, :uniqueness => {:scope => :reply_id}

private

  def increment_reply_eval_cnt
    if eval_type == "A"
      reply.increment_with_sql!(:agree_cnt)
    else
      reply.increment_with_sql!(:disagree_cnt)
    end
  end
end
