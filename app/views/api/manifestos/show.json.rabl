node :code do
  @code
end

node :message do
  @message
end

node :data do
  partial("api/shared/manifesto_detail", :object => @manifesto)
end
