attributes :id, :name, :birthday, :img, :bg_img, :memo

node :position_name do |politician|
  politician.position.name
end
