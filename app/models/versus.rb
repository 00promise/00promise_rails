class Versus < ActiveRecord::Base
  attr_accessible :title, :description, :start_date, :end_date, :visible, :replies_count

  attr_accessible :bg_img
  has_attached_file :bg_img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://00promise.org/img/feed_bg_00.png",
                    :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
                    :url => "http://00promise.org/system/:attachment/:id/:style/:filename"

  belongs_to :politician_l, class_name: "Politician"
  belongs_to :politician_r, class_name: "Politician"
  attr_accessible :politician_l_id
  attr_accessible :politician_r_id

  has_many :votes
  has_many :votes_l, class_name: "Vote", conditions: { vote_id: 0 }
  has_many :votes_r, class_name: "Vote", conditions: { vote_id: 1 }
  attr_accessible :votes_count
  attr_accessible :votes_l_count
  attr_accessible :votes_r_count

  has_many :replies, as: :replyable, dependent: :destroy
  def best_replies
    self.replies.where("agree_cnt >= 10").order("agree_cnt DESC").limit(3)
  end
end
