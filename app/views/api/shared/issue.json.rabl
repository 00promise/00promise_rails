attributes :id, :replies_count, :title, :issue_type

node :politician do |issue|
  partial("api/shared/politician", :object => issue.politician)
end
#if params[:action] == 'show'
  node :links do |issue|
    partial("api/shared/link", :object => issue.links)
  end
#end