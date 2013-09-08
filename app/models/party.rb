class Party < ActiveRecord::Base
  attr_accessible :assembly_leader_id, :chairman_id, :founded_on, :name
end
