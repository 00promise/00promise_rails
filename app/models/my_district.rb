class MyDistrict < ActiveRecord::Base
  attr_accessible :position_id, :sigungu_id
  belongs_to :position
  belongs_to :sigungu
end
