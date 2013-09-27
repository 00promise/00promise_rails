class Manifesto < ActiveRecord::Base
  include Variation

  attr_accessible :description, :fair_cnt, :good_cnt, :poor_cnt, :reply_cnt, :title, :winner_id
  belongs_to :winner
  has_many :ratings
  has_many :replies
  has_one :latest_reply, class_name: "Reply", order: "id DESC"
end
