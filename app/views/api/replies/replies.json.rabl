node :code do
  @code
end

node :message do
  @message
end

node :data do
  partial("api/shared/reply", :object => @replies)
end
