
# Author: nkrsic
#
# NOTE: This script assumes that Mongo 5.0 with mongosh
#       has already been installed. This script uses
#       other scripts in this directory to create a
#       user-configurable root user.
#
#       It also assumes the presence of 'yq' YAML
#       editor, installed via ''./common/install-tools.sh'

cd js
mongosh create-admin-5.0.js && yq e -i '.security.authorization = "enabled"' /etc/mongod.conf
systemctl restart mongod
