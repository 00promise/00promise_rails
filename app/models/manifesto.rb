class Manifesto < ActiveRecord::Base
  attr_accessible :description, :politician_id, :title
end
