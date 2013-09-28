class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :token_authenticatable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  validates :password_confirmation, presence: true

  def masked_name
    name = self.email.split("@")[0]

    if name.length <= 3
      name
    else
      name[0, 3] + name[3..name.length].gsub(/./, '*')
    end
  end
end
