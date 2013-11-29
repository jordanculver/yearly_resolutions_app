puts 'ROLES'
roles = %w(admin)
roles.each do |role|
  Role.find_or_create_by_name(role)
  puts 'role: ' << role
end

puts 'DEFAULT USERS'

emails = %w( jordanculverdev@gmail.com craigwilliamsdev@gmail.com )
password = 'password'

emails.each do |email|
  unless User.find_by_email(email)
    user = User.create(email: email, password: password, password_confirmation: password)
    user.add_role :admin
  end
end
