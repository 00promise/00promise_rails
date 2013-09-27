node :code do
  @code
end

node :message do
 "..."
end

node :data do
  partial("api/shared/manifesto", :object => @manifestos )
end
