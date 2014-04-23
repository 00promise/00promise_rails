ActiveAdmin.register Issue do
  decorate_with IssueDecorator
  menu :parent => "배틀&핫이슈", :priority => 2, :label=>"핫이슈"
  form do |f|
    f.inputs "Issue" do
      f.input :title, :include_blank => false
      f.input :issue_type, collection: IssueType.to_select, as: :select
      f.input :politician
    end
    f.actions
  end

  index do
    selectable_column
    column :id do |issue|
      link_to issue.id, admin_issue_path(issue)
    end
    column :title
    column :replies_count
    column :issue_type_html
    column :politician

    default_actions
  end

  show do
    attributes_table do
      row :id
      row :title
      row :replies_count
      row :issue_type_html
      row :politician
      row :updated_at
      row :created_at
    end
    panel 'Link' do
      table_for issue.links do
        column "name" do |link|
          links = ''.html_safe
          links += link_to "#{link.title} - #{link.press}", admin_link_path(link)
          links
        end
      end
    end
    panel 'Replies' do
      table_for issue.replies do
        column "Reply" do |reply|
          links = ''.html_safe
          links += link_to  "#{reply.content} : #{reply.user.email}", admin_reply_path(reply)
          links
        end
      end
    end
  end
end
