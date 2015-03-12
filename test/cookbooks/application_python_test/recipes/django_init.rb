include_recipe 'git'


application "mysite" do
  path "/srv/mysite"
  repository "https://github.com/OpenAcademyChefs/sample-django.git"
  revision "master"
  migrate true
  force true

  django do
    packages ["redis"]
    debug true
    local_settings_file "mysite/settings.py"
  end
end
