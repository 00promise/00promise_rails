class Manifesto < ActiveRecord::Base
  attr_accessible :description, :fair_cnt, :good_cnt, :politician_id, :poor_cnt, :reply_cnt, :title
  belongs_to :politician
  has_many :ratings
  has_many :replies
end
