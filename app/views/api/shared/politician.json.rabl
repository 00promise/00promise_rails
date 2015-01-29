attributes :id, :name, :img, :bg_img, :memo, :current_age, :academic,  :history, :property, :military, :payment, :arrears, :now_arrears, :crime

node :birthday do |p|
  p.birthday.to_time.to_i
end

node :position_name do |p|
  p.position.name
end

node :party_name do |p|
  p.party.name
end
