# path where you download and compile R
#PathToDownlad=/mnt/work/source/
mkdir /home/ubuntu/work
mkdir /home/ubuntu/work/source
PathToDownlad=/home/ubuntu/work/source/

# path where R will be install
#PathToInstallR=/mnt/work/software/R/R-3.6.1
mkdir /home/ubuntu/work/software
mkdir /home/ubuntu/work/software/R
PathToInstallR=/home/ubuntu/work/software/R/R-3.6.1

cd $PathToDownlad

#download lastest R:
wget https://cran.r-project.org/src/base/R-3/R-3.6.1.tar.gz
wget https://github.com/weizhouUMICH/SAIGE/releases/download/0.36.1/SAIGE_0.36.1_R_x86_64-pc-linux-gnu.tar.gz

# extract
tar xvzf R-3.6.1.tar.gz
cd R-3.6.1

# install tcl and tk
sudo apt update
sudo apt install tcl-dev tk-dev
sudo apt-get install libssl-dev
sudo apt-get install libopenblas-dev
sudo apt-get install libcurl4-openssl-dev
sudo apt-get install libxml2 libxml2-dev

# could be that more packages have to be installed to compile properly

# configure R
./configure --with-x=no --prefix=${PathToInstallR} --enable-memory-profiling --enable-R-shlib --with-blas --enable-shared --with-tcltk --with-tcl-config=/usr/lib/tclConfig.sh --with-tk-config=/usr/lib/tkConfig.sh --with-libtiff --with-libpng --with-jpeglib

# compile
make -j1

# install R in path specified by PathToInstallR variable
make install

# add openbals
#sudo apt-get install libopenblas-dev

# add PATH
export PATH="/home/ubuntu/work/software/R/R-3.6.1/bin:$PATH"

