attributes :id, :title, :description, :reply_cnt, :good_cnt, :fair_cnt, :poor_cnt, :replies_count

child :politician do
  extends "api/shared/politician"
end

#child :best_agreed_reply do
#  extends "api/shared/reply"
#end

node :reply do |manifesto|
  partial("api/shared/reply", :object => manifesto.replies.first)
end
