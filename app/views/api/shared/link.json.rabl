attributes :press, :title, :url

node :politician do |l|
  partial("api/shared/politician", :object => l.politician)
end
