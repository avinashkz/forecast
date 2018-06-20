# Docker file to run pipeline and text analysis for predicting traffic to msn.com
# Avinash Prabhakaran, May, 2018

# use rocker/tidyverse as the base image and
FROM rocker/tidyverse

# Installing other dependencies
RUN Rscript -e "install.packages(c('optparse', 'argparse', 'doParallel'), repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages(c('feather', 'moments', 'strip', 'jsonlite'), repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages(c('stringi', 'tidytext', 'stm', 'stopwords', 'servr', 'LDAvis'), repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages(c('forecast', 'tseries', 'imputeTS', 'quantreg'), repos = 'http://cran.us.r-project.org')"
RUN Rscript -e "install.packages(c('zoo', 'scales', 'cowplot'), repos = 'http://cran.us.r-project.org')"
