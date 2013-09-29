extends "api/shared/manifesto"

node :rating_status do |m|
  m.rating_status
end

node :politician do |m|
  partial("api/shared/politician", :object => m.politician)
end
