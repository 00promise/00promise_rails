node :code do
  @code
end

node :message do
  @message
end

node :data do
  partial("api/versus/show", :object => @versus )
end