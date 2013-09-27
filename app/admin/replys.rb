ActiveAdmin.register Reply do
	decorate_with ReplyDecorator
	config.sort_order = "id_desc"

	menu :parent => "리플&평가", :priority => 0, :label=>"리플"

  form do |f|
  	f.inputs "Reply" do
	    f.input :content, :include_blank => false
	    f.input :user, :as=>:select, :collection=>User.all.map(&:email), :include_blank => false
	    f.input :manifesto, :include_blank => false

	  end
    f.actions
  end
end
