node(:code) { @code }

node(:message) { "..." }

child @manifestos do
  attributes :id, :title, :description, :reply_cnt, :good_cnt, :fair_cnt, :poor_cnt

  child :politician do
    attributes :id, :name, :profile_img, :bg_img
  end

  child :latest_reply do
    attributes :id, :content, :created_at
    node :username do |reply|
      reply.user.email
    end
  end
end
