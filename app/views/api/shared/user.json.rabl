attributes :email
node :auth_token do |user|
  user.authentication_token
end
