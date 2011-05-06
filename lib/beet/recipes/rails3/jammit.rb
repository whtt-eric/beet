gem 'jammit', :version => "0.6.0"

rvm "bundle install"

in_root do
  file "config/assets.yml" do
%{
package_assets: on
javascript_compressor: closure

stylesheets:
  base:
    - public/stylesheets/reset.css
    - public/stylesheets/application.css
  ie7:
    - public/stylesheets/ie7.css
  ie8:
    - public/stylesheets/ie8.css

javascripts:
  application:
    - public/javascripts/rails.js
    - public/javascripts/application.js
}
  end
end
