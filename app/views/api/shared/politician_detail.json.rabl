extends "api/shared/politician"

node :links do |p|
  partial("api/shared/link_no_politician", :object => p.links)
end

#node :replies do |p|
#  partial("api/shared/reply", :object => p.replies)
#end
