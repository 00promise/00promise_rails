class Winner < ActiveRecord::Base
  attr_accessible :election_id, :party_id, :politician_id, :position_id, :present
  belongs_to :election
  belongs_to :position
  belongs_to :politician
  belongs_to :party
end
