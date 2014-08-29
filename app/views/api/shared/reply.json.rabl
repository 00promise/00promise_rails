attributes :id, :content, :agree_cnt, :disagree_cnt, :is_best, :is_owner, :user_eval_type, :replies_count, :reply_score

node :username do |reply|
  reply.user.masked_name
end

node :created_at do |reply|
  reply.created_at.to_i
end

node :replies do |reply|
  partial("api/shared/re_reply", :object => reply.replies)
end