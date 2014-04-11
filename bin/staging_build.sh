rsync -avzP target/qconsp.war staging.insula.com.br:
whoami
ssh -o StrictHostKeyChecking=no ubuntu@staging.insula.com.br << EOF
sudo service tomcat7 stop
sudo rm -fR /var/lib/tomcat7/webapps/ROOT*
sudo cp qconsp.war /var/lib/tomcat7/webapps/ROOT.war
sudo service tomcat7 start
sleep 5
EOF
