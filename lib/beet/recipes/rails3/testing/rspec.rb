gem_group [:development, :test] do
  gem 'rspec-rails', :version => '2.5.0'
  gem 'shoulda-matchers', :version => '1.0.0.beta2'
  gem 'mocha', :version => '0.9.12'
  gem 'factory_girl_rails', :version => '1.0.1'
  gem 'email_spec', :version => '1.1.1'
end

rvm "bundle install"

generate "rspec:install"

in_root do
  add_after 'config/application.rb', 'class Application < Rails::Application' do
%{
    config.generators do |g|
      g.test_framework :rspec
    end
}
  end

  # mocha config
  gsub_file "spec/spec_helper.rb", /(config.mock_with :rspec)/, '# \1'
  gsub_file "spec/spec_helper.rb", /#\s*(config.mock_with :mocha)/, '\1'

  # factory_girl_rails config
  gsub_file "spec/spec_helper.rb", /(config.fixture_path = "\#\{::Rails.root\}\/spec\/fixtures")/, '# \1'

  # email_spec config
  add_after "spec/spec_helper.rb", "require 'rspec/rails'" do
    %{require "email_spec"}
  end

  add_after "spec/spec_helper.rb", "RSpec.configure do |config|" do
%{
  config.include(EmailSpec::Helpers)
  config.include(EmailSpec::Matchers)
}
  end
end
