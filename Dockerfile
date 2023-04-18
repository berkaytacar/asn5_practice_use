# This is a docker file to use my asn5_practice repo and R package
#FROM rocker/rstudio
FROM rocker/tidyverse

#tagname - latest
#install packages
#running the image - docker run -d -e 8787:8787 -v ${PWD}:/home/rstudio

# packages that could be needed in the R Data Science Analysis
RUN R -e "install.packages('GGally', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('tidymodels', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('themis', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('kknn', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('testthat', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('here', repos='http://cran.rstudio.com/')"
RUN R -e "install.packages('bookdown', repos='http://cran.rstudio.com/')"
#RUN R -e "install.packages('bookdown', repos='http://cran.rstudio.com/')"

# My asn5_practice package

RUN Rscript -e "remotes::install_version('devtools', '2.4.3')"
RUN Rscript -e "devtools::install_github('berkaytacar/asn5_practice')"
