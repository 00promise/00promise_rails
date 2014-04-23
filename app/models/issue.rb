class Issue < ActiveRecord::Base
  attr_accessible :replies_count, :title, :issue_type, :politician_id

  belongs_to :politician
  has_many :links, dependent: :destroy
  has_many :replies, as: :replyable, dependent: :destroy
end
