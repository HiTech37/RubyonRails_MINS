json.users @users do |user|
    json.id  user.try(:id) 
    json.first_name user.try(:first_name)
    json.last_name user.try(:last_name)
    json.token   user.try(:token)
end