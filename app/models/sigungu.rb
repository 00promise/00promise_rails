class Sigungu < ActiveRecord::Base
  attr_accessible :code, :full_name, :name, :sido_id
  belongs_to :sido
  has_many :my_districts
  has_many :positions, through: :my_districts
end
