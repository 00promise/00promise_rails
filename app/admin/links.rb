ActiveAdmin.register Link do
  decorate_with LinkDecorator
  menu :parent => "배틀&핫이슈", :priority => 3, :label=>"링크"

  index do
    selectable_column
    column :id do |link|
      link_to link.id, admin_link_path(link)
    end
    column :title
    column :press
    column :issue
    column :url_html
    default_actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :press
      row :issue
      row :url_html
      row :updated_at
      row :created_at
    end
  end
end
