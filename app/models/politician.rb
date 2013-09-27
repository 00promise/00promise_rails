class Politician < ActiveRecord::Base
  attr_accessible :birthday, :name, :party_id
  belongs_to :party
  has_one :position
  has_many :manifestos


  # has_attached_file :avatar,
  #     :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
  #     :url => "/system/:attachment/:id/:style/:filename"
  # profile img
  attr_accessible :img
  has_attached_file :img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/image/politician/:style/missing.png"

  # profile img
  attr_accessible :bg_img
  has_attached_file :bg_img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/image/politician/:style/missing.png"
end
