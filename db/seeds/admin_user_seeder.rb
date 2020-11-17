user = User.find_by(username: 'alexyounger')
if (user.role.nil? || user.admin_security_key.nil?)
    user.role = 'master'
    user.admin_security_key = Rails.application.credentials.admin_security_key
    user.save
end