class Election < ActiveRecord::Base
  attr_accessible :held_on, :name, :note, :term_ended_on, :term_started_on
end
