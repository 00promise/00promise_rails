ActiveAdmin.register User do
  decorate_with UserDecorator
  menu :parent => "유저 관리", :priority => 2, :label=>"유저"


  show do
    attributes_table do
        row :id
        row :email
        row :nickname
        row :sign_in_count
        row :last_sign_in_ip
        row :social_id
        row :authentication_token
        row :img_html
    end
  end
end
