node :code do
  @code
end

node :message do
  @message
end

node :data do
  partial("api/shared/reply_report", :object => @report)
end
