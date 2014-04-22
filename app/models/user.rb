class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :token_authenticatable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  validates :password_confirmation, presence: true
  has_many :ratings

  def masked_name
    name, domain = self.email.split("@")

    if name.length <= 3
      name + "@" + domain
    else
      name[0, 3] + name[3..name.length].gsub(/./, '*') + "@" + domain
    end
  end
end
