attributes :id, :name, :img, :bg_img, :memo

node :birthday do |p|
  Time.new.to_i
end

node :position_name do |p|
  p.position.name
end
