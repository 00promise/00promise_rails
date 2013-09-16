object @reply
attributes :id, :content, :agree_cnt, :disagree_cnt

child :manifesto do
  attributes :id, :title, :description, :reply_cnt, :good_cnt, :fair_cnt, :poor_cnt
end
