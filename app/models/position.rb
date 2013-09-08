class Position < ActiveRecord::Base
  attr_accessible :district, :election_id, :name, :type_code, :type_name
end
