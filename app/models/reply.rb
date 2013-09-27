class Reply < ActiveRecord::Base
  include Variation

  attr_accessible :agree_cnt, :content, :disagree_cnt, :manifesto_id, :status, :user_id
  belongs_to :manifesto#TODO 주석제거, counter_cache: :reply_cnt
  belongs_to :user
  has_many :reply_evaluations
end
