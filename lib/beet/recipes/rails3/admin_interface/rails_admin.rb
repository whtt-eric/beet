gem 'devise'
gem 'rails_admin', :git => 'git://github.com/sferik/rails_admin.git'

rvm "bundle update"

model_name = ask "What is the name of your Devise model? (e.g. User, Admin)"
model_name = "User" if model_name.empty?

generate "rails_admin:install_admin model_name=#{model_name}"
