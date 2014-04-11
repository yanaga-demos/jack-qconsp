vagrant up
vagrant ssh << EOF
cd /vagrant
mvn clean package
EOF
