class Politician < ActiveRecord::Base
  attr_accessible :birthday, :name, :party_id
end
