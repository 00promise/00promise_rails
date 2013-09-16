object @politicians
attributes :id, :name, :birthday, :profile_img, :bg_img

child :party do
  attributes :id, :name
end
