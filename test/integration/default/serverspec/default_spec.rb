require 'serverspec'
set :backend, :exec

describe file('/home/app') do
  it { is_expected.to be_a_directory }
end

describe file('/home/app/current') do
  it { is_expected.to be_a_directory }
end

describe file('/home/app/current/README.md') do
  it { is_expected.to be_a_file }
  its(:content) { is_expected.to include('repo=test_repo') }
  its(:content) { is_expected.to include('branch=master') }
end
