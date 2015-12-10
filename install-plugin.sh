#!/bin/bash
#
# Install redhopper plugin for redmine
#

set -e

#
# Change to redmine plugins directory
#
mkdir -p /home/redmine/data/plugins 
cd /home/redmine/data/plugins 

#
# Download latest version of redhopper
#
rm -rf redmine_dashboard
wget https://github.com/jgraichen/redmine_dashboard/releases/download/v2.7.0/redmine_dashboard-v2.7.0.tar.gz -O - | tar xvfz -

