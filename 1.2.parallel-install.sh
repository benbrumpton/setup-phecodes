# install
sudo apt-get install parallel

# add the servers to the sshloginfile
(echo ssh -i ~/.ssh/mykey ubuntu@hunt-bristol-iaas-pollo; echo ssh -i ~/.ssh/mykey ubuntu@hunt-bristol-iaas-sandy; echo ssh -i ~/.ssh/mykey ubuntu@hunt-bristol-iaas-tally; echo ssh hunt-bristol-iaas-wasat) > ~/.parallel/my_cluster

echo ssh ubuntu@hunt-phecodes-iaas1 > ~/.parallel/my_cluster

# Add a specific machine
echo 'ssh ubuntu@hunt-phecodes-blue-korne' >> ~/.parallel/my_cluster

# make sure .ssh/config exist
touch ~/.ssh/config
cp ~/.ssh/config ~/.ssh/config.backup

# disable StrictHostKeyChecking temporarily
(echo 'Host *'; echo StrictHostKeyChecking no) >> ~/.ssh/config
parallel --slf my_cluster --nonall true

# remove the disabling of StrictHostKeyChecking
mv .ssh/config.backup .ssh/config



