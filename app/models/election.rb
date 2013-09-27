class Election < ActiveRecord::Base
  attr_accessible :enabled, :held_on, :name, :ord
end
