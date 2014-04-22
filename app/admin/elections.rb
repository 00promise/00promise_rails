ActiveAdmin.register Election do
  decorate_with ElectionDecorator
  menu :parent => "선거 관리", :priority => 1, :label=>"선거"

  form do |f|
    f.inputs "Election" do
      f.input :name
      f.input :held_on
      f.input :enabled
      f.input :ord
    end
    f.actions
  end
  index do
    selectable_column
    column :id do |election|
      link_to election.id, admin_election_path(election)
    end
    column :name
    column :held_on
    column :enabled
    column :ord

    #column :bg_img_html
    default_actions
  end

  show do
    attributes_table do
        row :id
        row :name
        row :held_on
        row :enabled
        row :ord
    end
    panel 'Winners' do
      table_for election.winners do
        column "name" do |winner|
          links = ''.html_safe
          links += link_to "#{winner.politician.name}(#{winner.position.name} - #{winner.party.name})", admin_politician_path(winner.politician)
          links
        end
      end
    end
  end
end
