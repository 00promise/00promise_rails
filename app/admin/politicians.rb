ActiveAdmin.register Politician do
	decorate_with PoliticianDecorator
	config.sort_order = "id_desc"

	menu :parent => "정치인 관리", :priority => 1, :label=>"정치인"
	#attr_accessible :birthday, :name, :party_id, :img, :bg_img
	form do |f|
  	f.inputs "Trainer" do
	    f.input :birthday, :include_blank => false
	    f.input :name, :include_blank => false
      f.input :party_id                  
	    f.input :img, :as=>:file  
      f.input :bg_img, :as=>:file
      f.has_many :manifestos
	  end
    f.actions
  end
end
