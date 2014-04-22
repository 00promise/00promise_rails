extends "api/shared/politician"

node :manifestos do |p|
  partial("api/shared/manifesto", :object => p.manifestos)
end
