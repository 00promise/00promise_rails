class Party < ActiveRecord::Base
  attr_accessible :assembly_leader_name, :chairman_name, :founded_on, :name
  has_many :politicians

  attr_accessible :img
  has_attached_file :img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/image/party/:style/missing.png"
end
