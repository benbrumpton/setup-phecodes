# test cluster

parallel -j 1 --joblog sleep.log --sshloginfile my_cluster sleep ::: 25 25 25 25

