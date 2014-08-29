class ReplyShip < ActiveRecord::Base
  attr_accessible :reply_id
  belongs_to :reply
end
