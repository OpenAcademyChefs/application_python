require 'serverspec'
set :backend, :exec

describe file('/srv/sample-django') do
  it {should be_directory}
end

describe file('/srv/sample-django/mysite') do
  it {should be_directory}
end

describe file('/srv/sample-django/manage.py') do
  it {should be_file}
end

describe file('/srv/sample-django/db.sqlite3') do
  it {should be_file}
end

describe port(8000) do
  it {should be_listening}
end
