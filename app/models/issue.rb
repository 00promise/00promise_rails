class Issue < ActiveRecord::Base
  attr_accessible :title, :link_id

  belongs_to :link
  #has_many :replies, as: :replyable, dependent: :destroy

  def best_replies
    self.replies.where("agree_cnt >= 10").order("agree_cnt DESC").limit(3)
  end
end
