# Docker
sudo systemctl start docker
sudo systemctl enable docker

# # Postgres
# sudo -u postgres -i
# initdb --locale $LANG -E UTF8 -D '/var/lib/postgres/data'
# exit
# sudo systemctl enable postgresql.service
# sudo systemctl start postgresql.service