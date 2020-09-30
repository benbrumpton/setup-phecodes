#!/usr/bin/env Rscript
#install required R packages for SAIGE

req_packages <- c("R.utils", "Rcpp", "RcppParallel", "RcppArmadillo", "data.table", "RcppEigen", "Matrix", "methods", "BH", "optparse", "MetaSKAT", "SKAT", "roxygen2", "rversions","devtools", "inline")
for (pack in req_packages) {
    if(!require(pack,character.only = TRUE)) {
        install.packages(pack, repos = "http://cran.us.r-project.org")
    }
}

require(devtools)
install_version("SPAtest", version = "3.0.0", repos = "http://cran.us.r-project.org")

#install required R packages for phecodes

req_packages <- c("data.table", "tidyr", "parallel", "intervals", "XML", "RCurl", "rlist", "bitops")
for (pack in req_packages) {
    if(!require(pack,character.only = TRUE)) {
        install.packages(pack, repos = "http://cran.us.r-project.org")
    }
}

#install required R packages for analysis scripts

req_packages <- c("optparse")
for (pack in req_packages) {
    if(!require(pack,character.only = TRUE)) {
        install.packages(pack, repos = "http://cran.us.r-project.org")
    }
}

# install SAIGE
install.packages("/home/ubuntu/work/source/SAIGE_0.36.1_R_x86_64-pc-linux-gnu.tar.gz", repos = NULL, type="source")

