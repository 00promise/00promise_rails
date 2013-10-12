attributes :id, :content, :agree_cnt, :disagree_cnt, :is_best, :is_owner

node :username do |reply|
  reply.user.masked_name
end

node :created_at do |reply|
  reply.created_at.to_i
end
