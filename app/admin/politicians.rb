ActiveAdmin.register Politician do
	decorate_with PoliticianDecorator
	config.sort_order = "id_desc"

	menu :parent => "정치인 관리", :priority => 1, :label=>"정치인"

	form do |f|
  	f.inputs "Politician" do
	    f.input :birthday, :include_blank => false
	    f.input :name, :include_blank => false
      f.input :party
	    f.input :img, :as=>:file
      f.input :bg_img, :as=>:file
      f.input :memo
      f.has_many :manifestos do |manifesto_f|
	    	manifesto_f.input :description
	      manifesto_f.input :title
	    end
	  end
    f.actions
  end
  index do
    selectable_column
    column :id do |politician|
      link_to politician.id, admin_politician_path(politician)
    end
    column :birthday
    column :name
    column :party
    column :img_html
    column :memo,:width => 300
    #column :bg_img_html
    default_actions
  end

  show do
		attributes_table do
  			row :id
        row :birthday
  			row :name
  			row :party
  			row :img_html
    		row :bg_img_html
        panel 'Profile' do
          table_for politician.winners do
            column "Winner" do |winner|
              str = ""
              str = "(현직)" if winner.present == true
              str += "#{winner.election.name} - #{winner.position.name}"
            end
          end
        end

 		    row :memo
        row :age
        row :address
        row :academic
        row :history
        row :property
        row :military
        row :payment
        row :arrears
        row :now_arrears
        row :crime
    end
  end
end
