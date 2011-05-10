gem "compass", :version => ">= 0.11.1"

say("\nCompass recommends that you keep your Sass stylesheets in app/stylesheets")
say("instead of the Sass default location of public/stylesheets/sass\n")
sass_dir = yes?("Is this OK? (Y/n)") ? "app/stylesheets" : "public/stylesheets/sass"

say("\nCompass recommends that you keep your compiled css in public/stylesheets/compiled/")
say("instead the Sass default of public/stylesheets/")
say("However, if you're exclusively using Sass, then public/stylesheets/ is recommended.\n")
css_dir = yes?("Emit compiled stylesheets to public/stylesheets/compiled/? (Y/n)") ? "public/stylesheets/compiled" : "public/stylesheets"

say("\nThe compass output syntax can be either sass or scss. The default is scss.")
syntax = yes?("Use scss output? (Y/n)") ? "scss" : "sass"

framework = ask("\nWhich Compass framework would you like to load? Compass, blueprint, html5-boilerplate, susy? (default: compass)")

case framework.downcase
  when "blueprint"
    options = "--using blueprint"
  when "html5-boilerplate"
    gem "haml"
    gem "html5-boilerplate"
    options = "--require html5-boilerplate --using html5-boilerplate"
  when "susy"
    gem "compass-susy-plugin"
    options = "--require susy --using susy"
  else
    options = ""
end

rvm "bundle install"

options += " --syntax #{syntax} --css-dir #{css_dir} --sass-dir #{sass_dir}"
rvm "compass init rails #{options} --force"

append_file 'config/compass.rb', <<-RUBY.gsub(/^ {2}/, '')
  project_path = Compass::AppIntegration::Rails.root

  environment = Compass::AppIntegration::Rails.env

  if Compass::AppIntegration::Rails.env == :development
    output_style = :nested
  else
    output_style = :compressed
  end
RUBY
