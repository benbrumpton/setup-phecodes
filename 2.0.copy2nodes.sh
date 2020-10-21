# copy the run git repo
#cd /home/ubuntu/
#git clone https://github.com/benbrumpton/run-phecodes.git

# make folders
#mkdir /home/ubuntu/

# copy to node
#node=ubuntu@hunt-bristol-iaas-pollo:/home/ubuntu
#node=ubuntu@hunt-bristol-iaas-tally:/home/ubuntu
#node=ubuntu@hunt-bristol-blue-zaura:/home/ubuntu
#node=ubuntu@hunt-bristol-iaas-sandy:/home/ubuntu
node=ubuntu@hunt-phecodes-iaas1:/home/ubuntu/
                                   
#rsync --rsh="sshpass -p "ubuntu" ssh -o StrictHostKeyChecking=no -l benb" /mnt/work/genotypes/hunt600bcfs  ubuntu@hunt-bristol-iaas-pollo:/home/ubuntu/

#rsync -av -P -r /mnt/scratch/genotypes/hunt600bcfs  ${node}

rsync -av -P -r /mnt/scratch/mnt-docker ${node}

#rsync -av -P -r -e "ssh -i /home/benb/.ssh/mykey" /mnt/scratch/genotypes/toy_hunt600bcfs ${node}
#rsync -av -P /mnt/archive/benb/phecodes/pheno_genotypeID.txt  ubuntu@hunt-bristol-iaas-pollo:/home/ubuntu/phecodes
#rsync -av -P -r -e "ssh -i /home/benb/.ssh/mykey" /mnt/work/phenotypes/phenotypes-from-data-owners/phecodes ${node}
#rsync -av -P -r -e ssh -i /home/benb/.ssh/mykey /mnt/scratch/genotypes/toy_HRC_WGS_VCF_RSQ3/ ubuntu@hunt-bristol-iaas-wasat:/home/ubuntu
#rsync -av -P -r -e "ssh -i /home/benb/.ssh/mykey" /mnt/scratch/basefile_node/pheno ${node}

rsync -av -P ../saige-docker/run.sh ubuntu@hunt-phecodes-iaas1:/home/ubuntu/mnt-docker/saige-docker
