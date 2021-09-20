#
#  Author: nkrsic
#  Sources:
#
#    - Systemd service files cleanup (check these dirs if purge fails for some reason)
#        - /usr/lib/systemd
#        - /etc/systemd/
#
#    - Purging any old files from apt or dpkg
#        - https://askubuntu.com/questions/176121/dpkg-error-trying-to-overwrite-file-which-is-also-in

#    - Clearing up old systemctl service files
#        - https://superuser.com/questions/513159/how-to-remove-systemd-services


# Remove script based on the following wildcard:
#
#     apt remove mongodb*

apt remove --yes mongo-tools mongodb-clients mongodb-server-core mongodb-server mongodb
apt --yes autoremove
apt purge --yes mongo-tools mongodb-clients mongodb-server-core mongodb-server mongodb

# In output of the 'apt purge mongodb*' command, we see warnings:
#
# dpkg: warning: while removing mongodb-server, directory '/var/log/mongodb' not empty so not removed
# dpkg: warning: while removing mongodb-server, directory '/var/lib/mongodb' not empty so not removed
#
# .. Manually delete any files left behind

rm -rf /var/log/mongodb/
rm -rf /var/lib/mongodb/

# NOTE TO USER:
#
# The 'apt purge' command should have removed all Mongo configuration files.
# If your installation differs significantly there may still be conflicting
# Mongo-related systemd files that need to be removed in the locations below.
#
#     /usr/lib/systemd
#     /etc/systemd/

systemctl daemon-reload
systemctl reset-failed
