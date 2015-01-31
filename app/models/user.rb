class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :token_authenticatable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :nickname
  # attr_accessible :title, :body
  validates :password_confirmation, presence: true
  has_many :ratings

  attr_accessible :img
  has_attached_file :img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "http://00promise.org/img/default_image.png",
      :path => ":rails_root/public/system/:attachment/:id/:style/:filename",
      :url => "http://00promise.org/system/:attachment/:id/:style/:filename"

  class << self
    def current_user=(user)
      Thread.current[:current_user] = user
    end

    def current_user
      Thread.current[:current_user]
    end
  end
  def name
    if self.nickname.nil?
      self.email.split("@").first
    else
      self.nickname
    end
  end
  def masked_name
    name, domain = self.email.split("@")

    if name.length <= 3
      name + "@" + domain
    else
      name[0, 3] + name[3..name.length].gsub(/./, '*') + "@" + domain
    end
  end
end
