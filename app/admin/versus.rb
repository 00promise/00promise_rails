ActiveAdmin.register Versus do
  menu :parent => "공약 관리", :priority => 2, :label=>"대결"

  form do |f|
    f.inputs "Versus" do
      f.input :title, :include_blank => false
      f.input :description
      f.input :politician_l, :include_blank => false
      f.input :politician_r, :include_blank => false
      f.input :start_date, :hint => "아직 작동안함"
      f.input :end_date, :hint => "아직 작동안함"
      f.input :visible, :hint => "아직 작동안함"
      f.input :bg_img, :as=>:file
    end
    f.actions
  end
end
