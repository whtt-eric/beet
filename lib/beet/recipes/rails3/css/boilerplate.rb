gem "compass"
gem "haml"
gem "html5-boilerplate"


say("Compass recommends that you keep your stylesheets in app/stylesheets")
say("instead of the Sass default location of public/stylesheets/sass.")
css_dir = yes?("Is this OK? (Y/n)") ? "app/stylesheets" : "public/stylesheets/sass"

say("Compass recommends that you keep your compiled css in public/stylesheets/compiled/")
say("instead the Sass default of public/stylesheets/.")
say("However, if you're exclusively using Sass, then public/stylesheets/ is recommended.")
sass_dir = yes?("Emit compiled stylesheets to public/stylesheets/compiled/? (Y/n)") ? "public/stylesheets/compiled" : "public/stylesheets"

say("The compass output syntax can be either sass or scss. The default is scss.")
syntax = yes?("Use scss output? (Y/n)") ? "scss" : "sass"

framework = ask("Which Compass framework would you like to use (default: blueprint)?")
framework = 'blueprint' if framework.empty?


file 'config/compass.rb', <<-RUBY.gsub(/^ {2}/, '')
  require 'html5-boilerplate'

  project_type = :rails
  project_path = Compass::AppIntegration::Rails.root
  http_path = "/"
  css_dir = "#{css_dir}"
  sass_dir = "#{sass_dir}"
  environment = Compass::AppIntegration::Rails.env

  if Compass::AppIntegration::Rails.env == :development
    output_style = :nested
  else
    output_style = :compressed
  end
RUBY

rvm "bundle install"

rvm "compass init rails -r html5-boilerplate -u html5-boilerplate -x #{syntax} --using #{framework} -c config/compass.rb --force"
