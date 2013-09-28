extends "api/shared/manifesto"

node :politician do |m|
  partial("api/shared/politician", :object => m.politician)
end
