class Reply < ActiveRecord::Base
  attr_accessible :agree_cnt, :content, :disagree_cnt, :manifesto_id, :status, :user_id
  belongs_to :manifesto, counter_cache: :reply_cnt
  belongs_to :user
  has_many :reply_evaluations
end
