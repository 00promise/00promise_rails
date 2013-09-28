class Election < ActiveRecord::Base
  attr_accessible :enabled, :held_on, :name, :ord
  has_many :winners
  has_many :politicians, through: :winners
end
