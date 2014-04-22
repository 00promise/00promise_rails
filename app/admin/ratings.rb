ActiveAdmin.register Rating do
  menu :parent => "리플&평가", :priority => 1, :label=>"평가"
  form do |f|
    f.inputs "Reply" do
      f.input :manifesto, :include_blank => false
      f.input :user, :as=>:select, :collection=>User.all.map(&:email), :include_blank => false
      f.input :grade, :include_blank => false
    end
    f.actions
  end

  index do
    selectable_column
    column :id do |rating|
      link_to rating.id, admin_rating_path(rating)
    end
    column :manifesto
    column :user
    column :grade

    default_actions
  end

  show do
    attributes_table do
        row :id
        row :manifesto
        row :user
        row :grade
    end
  end
end
