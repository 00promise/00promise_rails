class Manifesto < ActiveRecord::Base
  attr_accessible :description, :politician_id, :title
  belongs_to :politician
  has_many :ratings
  has_many :replies
end
