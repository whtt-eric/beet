gem_group [:development, :test] do
  gem 'capybara', :version => '0.4.1.2'
  gem 'database_cleaner'
  gem 'cucumber-rails', :version => '0.4.1'
  gem 'launchy'
  gem 'email_spec', :version => '1.1.1'
end

rvm 'bundle install'

generate 'cucumber:install --capybara'

in_root do
  add_after "features/support/env.rb", "require 'cucumber/rails'" do
    %{require 'email_spec/cucumber}
  end
end

generate 'email_spec:steps'
