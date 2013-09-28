ActiveAdmin.register Winner do
  decorate_with WinnerDecorator
  menu :parent => "선거 관리", :priority => 2, :label=>"당선정보"

  form do |f|
    f.inputs "Winner" do
      f.input :election
      f.input :position
      f.input :politician
      f.input :party
      f.input :present
    end
    f.actions
  end
  index do
    selectable_column
    column :id do |winner|
      link_to winner.id, admin_winner_path(winner)
    end
    column :election
    column :position
    column :politician
    column :party
    column :present
    #column :bg_img_html
    default_actions
  end

  show do
    attributes_table do
        row :id
        row :election
        row :position
        row :politician
        row :party
        row :present
    end
    panel 'Manifestos' do
      table_for winner.manifestos do
        column "name" do |manifesto|
          links = ''.html_safe
          links += link_to "#{manifesto.title}", admin_manifesto_path(manifesto)
          links
        end
      end
    end
  end
end
