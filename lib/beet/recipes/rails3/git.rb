remove_file '.gitignore'
file '.gitignore', <<-CODE.gsub(/^ {2}/, '')
  .DS_Store
  .bundle
  .rvmrc
  mkmf.log
  log/*
  coverage/*
  tmp/**/*
  config/database.yml
  coverage/*
CODE

git :init
git :add => "."
git :commit => "-m 'Initial commit from Beet. Enjoy.'"
