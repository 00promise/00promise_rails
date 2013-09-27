class Party < ActiveRecord::Base
  attr_accessible :founded_on, :name, :ord, :visible
  has_many :politicians

  attr_accessible :img
  has_attached_file :img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/image/party/:style/missing.png"
end
