class Link < ActiveRecord::Base
  attr_accessible :press, :title, :url, :politician_id

  has_one :issue, dependent: :destroy
  belongs_to :politician
end
