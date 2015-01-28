ActiveAdmin.register Issue do
  decorate_with IssueDecorator
  menu :parent => "배틀&핫이슈", :priority => 2, :label=>"핫이슈"
  form do |f|
    f.inputs "Issue" do
      f.input :title, :include_blank => false
      f.input :link
    end
    f.actions
  end

  index do
    selectable_column
    column :id do |issue|
      link_to issue.id, admin_issue_path(issue)
    end
    column :title
    column :link

    default_actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :link do |issue_eval|
        link_to issue_eval.link.title, admin_link_path(issue_eval.link)
      end
      row :updated_at
      row :created_at
    end
  end
end
