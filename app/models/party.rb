class Party < ActiveRecord::Base
  attr_accessible :assembly_leader_name, :chairman_name, :founded_on, :name
  has_many :politicians
end
