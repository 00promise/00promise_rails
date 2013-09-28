ActiveAdmin.register Position do
  decorate_with PositionDecorator
  config.sort_order = "id_desc"
  menu :parent => "정치인 관리", :priority => 3, :label=>"의석"

  form do |f|
    f.inputs "Position" do
      f.input :name, :include_blank => false
      f.input :type_name, :include_blank => false
      f.input :type_code, :include_blank => false
      f.input :district
      f.input :enabled
    end
    f.actions
  end
  index do
    selectable_column
    column :id do |position|
      link_to position.id, admin_position_path(position)
    end
    column :name
    column :type_name
    column :type_code
    column :district
    column :enabled

    default_actions
  end

  show do
    attributes_table do
        row :id
        row :name
        row :type_name
        row :district
        row :enabled
    end
  end
end
