ActiveAdmin.register Party do
	decorate_with PartyDecorator
  menu :parent => "정치인 관리", :priority => 2, :label=>"정당"
  
end
