class Rating < ActiveRecord::Base
  attr_accessible :grade, :manifesto_id, :user_id
  belongs_to :manifesto
end
