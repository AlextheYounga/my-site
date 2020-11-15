user = User.where(username: 'alexyounger')
user.role = 'master'
user.admin_security_key = Rails.application.credentials.admin_security_key
user.save