class Sido < ActiveRecord::Base
  attr_accessible :name, :ord
  has_many :sigungus
end
