class Issue < ActiveRecord::Base
  attr_accessible :replies_count, :title, :issue_type, :politician_id

  belongs_to :politician
  has_many :links, dependent: :destroy
  has_many :replies, as: :replyable, dependent: :destroy

  def best_replies
    self.replies.where("agree_cnt >= 10").order("agree_cnt DESC").limit(3)
  end
end
