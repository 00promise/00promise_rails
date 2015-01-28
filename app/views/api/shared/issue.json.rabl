attributes :id, :title

node :link do |i|
  partial("api/shared/link", :object => i.link)
end

