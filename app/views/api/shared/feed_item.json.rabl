attributes :id, :title, :description, :reply_cnt, :good_cnt, :fair_cnt, :poor_cnt

child :politician do
  extends "api/shared/politician"
end

child :latest_reply do |reply|
  attributes :id, :content
  node :created_at do
    reply.created_at.to_i
  end
  node :username do |reply|
    reply.user.email
  end
end
