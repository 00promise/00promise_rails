object @eval
attributes :id, :reply_id, :user_id, :eval_type

child :reply do
  attributes :id, :content, :agree_cnt, :disagree_cnt, :created_at
  node :username do |reply|
    reply.user.email
  end
end
