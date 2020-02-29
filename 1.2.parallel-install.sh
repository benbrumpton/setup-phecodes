# install
sudo apt-get install parallel

# add the servers to the sshloginfile
(echo ssh -i ~/.ssh/mykey ubuntu@hunt-bristol-iaas-pollo) > ~/.parallel/my_cluster

# make sure .ssh/config exist
touch ~/.ssh/config
cp ~/.ssh/config ~/.ssh/config.backup

# disable StrictHostKeyChecking temporarily
(echo 'Host *'; echo StrictHostKeyChecking no) >> ~/.ssh/config
parallel --slf my_cluster --nonall true

# remove the disabling of StrictHostKeyChecking
mv .ssh/config.backup .ssh/config



