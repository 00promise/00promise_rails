class Politician < ActiveRecord::Base
  attr_accessible :birthday, :name, :party_id
  belongs_to :party
  has_one :position
  has_many :manifestos
end
