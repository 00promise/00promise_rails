object @replies
attributes :id, :content, :agree_cnt, :disagree_cnt

node :username do |reply|
  reply.user.email
end