# not sure if it matters, but this recipe should probably be the first in the list to ensure that gems are installed to the correct gemset
current_ruby = `rvm list`.match(/=> ([^ ]+)/)[1]
desired_ruby = ask "Which rvm Ruby would you like to use? (leave blank to use #{current_ruby})"
desired_ruby = current_ruby if desired_ruby.empty?
@ruby_version = desired_ruby

gemset_name = ask "What name should the custom gemset have? (leave empty to use global)"
@ruby_version += "@#{gemset_name}" unless gemset_name.empty?

run "rvm use #{@ruby_version} --create"

file '.rvmrc', "rvm #{@ruby_version}"
run "rvm rvmrc trust"

run "rvm #{@ruby_version} gem install bundler"
