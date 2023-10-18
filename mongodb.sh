
script_location=$(pwd)

cp ${script_location}/files/mongod.repo /etc/yum.repos.d/mongodb.repo

dnf install mongodb-org -y
systemctl start mongod

sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mongod.conf

systemctl enable mongod
systemctl restart mongod
