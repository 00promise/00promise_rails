# deprecated - 안씀 replies.json.rabl 로 통일
node :code do
  @code
end

node :message do
  @message
end

node :data do
  partial("api/shared/reply", :object => @replies)
end
