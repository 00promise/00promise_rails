attributes :press, :title, :url

node :updated_at do |p|
  p.updated_at.to_i
end

node :created_at do |p|
  p.created_at.to_i
end
