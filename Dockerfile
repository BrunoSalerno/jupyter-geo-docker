# Start from a core stack version
FROM jupyter/datascience-notebook:9f9e5ca8fe5a
# Install in the default python3 environment

USER root

# We need:
# - libspatialindex for osmnx
# - libgdal-dev for gdal
RUN apt-get update && \
    apt-get install -y \
    libspatialindex-dev \
    libgdal-dev

RUN conda install gdal
RUN conda install descartes
RUN conda install geopandas
RUN conda install networkx
RUN conda install osmnx
RUN conda install contextily
RUN conda install geoplot

RUN pip install peartree
RUN pip install urbanaccess
RUN pip install momepy
