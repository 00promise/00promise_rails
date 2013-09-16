object @manifesto
attributes :id, :title, :description, :reply_cnt, :good_cnt, :fair_cnt, :poor_cnt

child :politician do
  attributes :id, :name, :profile_img, :bg_img
end
