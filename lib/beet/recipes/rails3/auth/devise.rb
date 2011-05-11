# this is designed for rails 3
gem 'devise', :version => '1.3.4'

rvm "bundle install"

generate "devise:install"

model_name = ask "What would you like to call your Devise model? (e.g. User, Admin)"
model_name = "User" if model_name.empty?

generate "devise #{model_name}"

if yes?("Generate Devise views?")
  generate "devise:views"
end

if yes?("Run migration to create #{model_name} table?")
  rake "db:migrate"
end
