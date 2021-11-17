FROM rocker/rstudio:4.1.2

WORKDIR /home/rstudio
COPY . /home/rstudio

RUN apt-get update && \
    apt-get install --no-install-recommends -y \
    libxt6

RUN Rscript -e 'install.packages("synapser")'

EXPOSE 8787
