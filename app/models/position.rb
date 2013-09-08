class Position < ActiveRecord::Base
  attr_accessible :district, :name, :politician_id, :type_code, :type_name
  belongs_to :politician
end
