# This script copies a folder to remotes in host list

readarray -t a < cp2List.txt

parallel -j 2 --joblog cp2hosts1.log rsync -av -P -r /mnt/scratch/mnt-docker ubuntu@{}:/home/ubuntu ::: "${a[@]}"

