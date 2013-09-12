class Politician < ActiveRecord::Base
  attr_accessible :bg_img, :birthday, :name, :party_id, :profile_img
  belongs_to :party
  has_one :position
  has_many :manifestos
end
