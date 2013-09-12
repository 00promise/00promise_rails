class Reply < ActiveRecord::Base
  attr_accessible :agree_cnt, :content, :disagree_cnt, :manifesto_id, :status, :user_id
end
