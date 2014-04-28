ActiveAdmin.register Versus do
  decorate_with VersusDecorator
  menu :parent => "배틀&핫이슈", :priority => 1, :label=>"대결"

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

  index do
    selectable_column
    column :id do |versus|
      link_to versus.id, admin_versu_path(versus)
    end
    column :title
    column :description
    column :politician_l
    column :politician_r
    column :bg_img_html

    default_actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :description
      row :politician_l
      row :politician_r
      row :bg_img_html
    end
    panel 'Replies' do
      table_for versus.replies do
        column "Reply" do |reply|
          links = ''.html_safe
          links += link_to  "#{reply.content} : #{reply.user.email}", admin_reply_path(reply)
          links
        end
      end
    end
  end
end
