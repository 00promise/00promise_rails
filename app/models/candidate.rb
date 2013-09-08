class Candidate < ActiveRecord::Base
  attr_accessible :current, :elected, :number, :politician_id, :position_id
end
