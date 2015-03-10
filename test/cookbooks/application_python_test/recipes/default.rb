
include_recipe 'git'

application 'test_repo' do
  path '/home/app'
  repository 'https://github.com/poise/test_repo.git'
  revision 'master'
end
