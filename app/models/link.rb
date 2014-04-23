class Link < ActiveRecord::Base
  attr_accessible :issue, :press, :title, :url, :issue_id

  belongs_to :issue
end
