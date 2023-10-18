
script_location=$(pwd)

cp ${script_location}/files/mongod.repo /etc/yum.repos.d/mongodb.repo

dnf install mongodb-org -y
systemctl enable mongod
systemctl start mongod
