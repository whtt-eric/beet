# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{beet}
  s.version = "0.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jack Dempsey"]
  s.date = %q{2010-08-31}
  s.default_executable = %q{beet}
  s.email = %q{jack.dempsey@gmail.com}
  s.executables = ["beet"]
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc",
     "TODO"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "TODO",
     "VERSION",
     "beet.gemspec",
     "bin/beet",
     "features/generating.feature",
     "features/step_definitions/beet_steps.rb",
     "features/step_definitions/common_steps.rb",
     "features/support/common.rb",
     "features/support/env.rb",
     "lib/beet.rb",
     "lib/beet/capistrano.rb",
     "lib/beet/command_execution.rb",
     "lib/beet/executor.rb",
     "lib/beet/file_system.rb",
     "lib/beet/files/swfupload/images/cancelbutton.gif",
     "lib/beet/files/swfupload/images/header-bg.jpg",
     "lib/beet/files/swfupload/images/logo.gif",
     "lib/beet/files/swfupload/js/handlers.js",
     "lib/beet/gem_location_map.rb",
     "lib/beet/interaction.rb",
     "lib/beet/logger.rb",
     "lib/beet/rails.rb",
     "lib/beet/recipes/passenger/vhost.rb",
     "lib/beet/recipes/rack/middleware.rb",
     "lib/beet/recipes/rails/auth/authlogic.rb",
     "lib/beet/recipes/rails/auth/clearance.rb",
     "lib/beet/recipes/rails/auth/devise.rb",
     "lib/beet/recipes/rails/clean_files.rb",
     "lib/beet/recipes/rails/cms/bcms_blog.rb",
     "lib/beet/recipes/rails/cms/bcms_event.rb",
     "lib/beet/recipes/rails/css/blueprint.rb",
     "lib/beet/recipes/rails/css/compass.rb",
     "lib/beet/recipes/rails/css/nifty_layout.rb",
     "lib/beet/recipes/rails/css/reset.rb",
     "lib/beet/recipes/rails/db/mongo.rb",
     "lib/beet/recipes/rails/db/mysql.rb",
     "lib/beet/recipes/rails/db/postgres.rb",
     "lib/beet/recipes/rails/git.rb",
     "lib/beet/recipes/rails/jquery.rb",
     "lib/beet/recipes/rails/swfupload.rb",
     "lib/beet/recipes/rails/testing/rspec.rb",
     "lib/beet/recipes/rails/testing/shoulda.rb",
     "lib/beet/recipes/rails3/auth/devise.rb",
     "lib/beet/recipes/rails3/clean_files.rb",
     "lib/beet/recipes/rails3/css/reset.rb",
     "lib/beet/recipes/rails3/db/mysql.rb",
     "lib/beet/recipes/rails3/git.rb",
     "lib/beet/recipes/rails3/js/jquery.rb",
     "lib/beet/recipes/rails3/testing/cucumber.rb",
     "lib/beet/recipes/rails3/testing/rspec.rb",
     "lib/beet/scm.rb",
     "lib/beet/scm/git.rb",
     "lib/beet/scm/svn.rb",
     "lib/beet/template_location_map.rb",
     "test/executor_test.rb",
     "test/file_system_test.rb",
     "test/test_helper.rb"
  ]
  s.homepage = %q{http://github.com/jackdempsey/beet}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A gem to help with easily generating projects}
  s.test_files = [
    "test/executor_test.rb",
     "test/file_system_test.rb",
     "test/test_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<thor>, ["~> 0.14.0"])
    else
      s.add_dependency(%q<thor>, ["~> 0.14.0"])
    end
  else
    s.add_dependency(%q<thor>, ["~> 0.14.0"])
  end
end

