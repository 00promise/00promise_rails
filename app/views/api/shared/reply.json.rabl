attributes :id, :content, :agree_cnt, :disagree_cnt, :is_best, :is_owner, :user_eval_type, :replies_count, :reply_score

node :username do |reply|
  reply.user.name
end

node :user_img do |reply|
  reply.user.img
end

node :time_ago do |reply|
  time_ago_in_words(reply.created_at)
end

#node :created_at do |reply|
#  reply.created_at.to_i
#end

#node :replies do |reply|
#  partial("api/shared/re_reply", :object => reply.replies)
#end