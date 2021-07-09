# /usr/bin/sensu-agent exists

describe directory('/etc/sensu') do
  its('owner') { should eq 'root' }
  it { should exist }
end

# /etc/sensu exists
describe file('/usr/bin/sensu-agent') do
  its('mode') { should cmp '0755' }
  it { should exist }
end
