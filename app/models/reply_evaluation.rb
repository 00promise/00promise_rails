class ReplyEvaluation < ActiveRecord::Base
  after_create :after_create
  after_update :after_update
  after_destroy :after_destroy

  attr_accessible :eval_type, :reply_id, :user_id
  belongs_to :reply
  belongs_to :user
  validates :eval_type, :inclusion => %w[A D]
  validates :reply_id, :presence => true
  validates :user_id, :presence => true, :uniqueness => {:scope => :reply_id}

private

  EVAL_TYPE_MAP = { "A" => :agree_cnt, "D" => :disagree_cnt }

  def after_create
    self.reply.calculate_score
    self.reply.increment_with_sql!(EVAL_TYPE_MAP[self.eval_type])
  end

  def after_update
    if self.eval_type_changed?
      self.reply.calculate_score
      before_eval_type, after_eval_type = self.eval_type_change
      self.reply.decrement_with_sql!(EVAL_TYPE_MAP[before_eval_type])
      self.reply.increment_with_sql!(EVAL_TYPE_MAP[after_eval_type])
    end
  end

  def after_destroy
    self.reply.calculate_score
    self.reply.decrement_with_sql!(EVAL_TYPE_MAP[self.eval_type])
  end
end
