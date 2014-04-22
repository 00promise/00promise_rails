class ReplyReport < ActiveRecord::Base
  attr_accessible :reply_id, :user_id
  belongs_to :reply
  belongs_to :user
  validates :reply_id, :presence => true
  validates :user_id, :presence => true, :uniqueness => {:scope => :reply_id}
end
