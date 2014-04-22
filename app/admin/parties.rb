ActiveAdmin.register Party do
	decorate_with PartyDecorator
  menu :parent => "정치인 관리", :priority => 2, :label=>"정당"

  form do |f|
    f.inputs "Party" do
      f.input :name, :include_blank => false
      f.input :visible, :include_blank => false
      f.input :ord, :include_blank => false
      f.input :founded_on
      f.input :img, :as=>:file
    end
    f.actions
  end
  index do
    selectable_column
    column :id do |party|
      link_to party.id, admin_party_path(party)
    end
    column :name
    column :visible
    column :ord
    column :founded_on
    column :img_html

    default_actions
  end

  show do
    attributes_table do
        row :id
        row :name
        row :visible
        row :ord
        row :founded_on
        row :img_html
    end
  end
end
