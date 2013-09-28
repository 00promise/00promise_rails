class Politician < ActiveRecord::Base
  attr_accessible :birthday, :memo, :name, :party_id
  belongs_to :party
  has_one :winner # 향후 current = true 조건 추가
  has_one :position, through: :winner # 향후 current = true 조건 추가
  has_many :winners
  has_many :manifestos, through: :winners
  accepts_nested_attributes_for :manifestos
  attr_accessible :manifestos_attributes
  # has_attached_file :avatar,
  #     :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
  #     :url => "/system/:attachment/:id/:style/:filename"
  # profile img
  attr_accessible :img
  has_attached_file :img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/image/politician/:style/missing.png",
      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename"
  # profile img
  attr_accessible :bg_img
  has_attached_file :bg_img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/image/politician/:style/missing.png",
      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "/system/:attachment/:id/:style/:filename"

  validates :birthday, presence: true
end
