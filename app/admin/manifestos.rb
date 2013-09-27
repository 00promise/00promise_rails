ActiveAdmin.register Manifesto do
	decorate_with ManifestoDecorator
	menu :parent => "공약 관리", :priority => 1, :label=>"공약"

	form do |f|
  	f.inputs "Manifesto" do
	    f.input :description
	    f.input :title
	    f.input :fair_cnt
      f.input :good_cnt 
      f.input :poor_cnt
      f.input :reply_cnt
      f.input :politician                
      f.has_many :replies do |reply_f|
	    	reply_f.input :content 
	      reply_f.input :user
	    end
	  end
    f.actions
  end
  index do    
    selectable_column        
    column :id do |manifesto|
      link_to manifesto.id, admin_manifesto_path(manifesto)
    end
    column :title             
    column :fair_cnt
    column :good_cnt                            
    column :poor_cnt
    column :reply_cnt
    column :politician
    #column :bg_img_html
    default_actions                   
  end 

  show do 
		attributes_table do
  			row :id
        row :description
        row :fair_cnt
		    row :good_cnt                            
		    row :poor_cnt
		    row :reply_cnt
		    row :politician
 		end
 		panel 'Reply' do
      table_for manifesto.replies do
      	column "name" do |reply|
          links = ''.html_safe
          links += link_to "#{reply.content} -#{reply.user.email}", admin_reply_path(reply)
          links
      	end
      end
    end
  end
end
