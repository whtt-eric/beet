gem "jquery-rails", :version => '1.0'

rvm "bundle install"

command = "jquery:install"
command += " --ui" if yes?("Include jQuery UI?")

version = ask "Version of jQuery to install? (default is 1.6)"
version = "1.6" if version.empty?
command += " --version #{version}"

generate command
