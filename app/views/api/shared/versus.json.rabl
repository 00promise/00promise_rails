attributes :id, :title, :description, :votes_l_count, :votes_r_count, :replies_count

node :politician_l do |versus|
  partial("api/shared/politician", :object => versus.politician_l)
end

node :politician_r do |versus|
  partial("api/shared/politician", :object => versus.politician_r)
end

#if params[:action] == 'show'
#    node :replies do |versus|
#      partial("api/shared/reply", :object => versus.replies)
#    end
#end