#!/bin/bash

curl https://packagecloud.io/install/repositories/chef/stable/script.deb | sudo bash
sudo apt-get install chef-server-core=12.0.0-rc.5-1
chef-server-ctl reconfigure

# opscode-manage
#chef-server-ctl install opscode-manage
apt-get -q -y install opscode-manage=1.6.2-1
opscode-manage-ctl reconfigure
chef-server-ctl reconfigure

# push jobs
# chef-server-ctl install opscode-push-jobs-server
apt-get -q -y install opscode-push-jobs-server=1.1.3-1
opscode-push-jobs-server-ctl reconfigure
chef-server-ctl reconfigure

# chef replication
# chef-server-ctl install chef-sync
# chef-sync-ctl reconfigure
# chef-server-ctl reconfigure

# reporting
# chef-server-ctl install opscode-reporting
apt-get -q -y install opscode-reporting=1.1.6-1
opscode-reporting-ctl reconfigure
chef-server-ctl reconfigure

sleep 10

# create admin user
chef-server-ctl user-create admin John Doe john@example.com password
# create organization
chef-server-ctl org-create example-org Example Inc.  --association_user admin
