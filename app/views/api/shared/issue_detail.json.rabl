extends "api/shared/issue"

node :replies do |issue|
  partial("api/shared/reply", :object => issue.replies)
end