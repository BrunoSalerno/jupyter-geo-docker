# Start from a core stack version
FROM jupyter/datascience-notebook:9f9e5ca8fe5a
# Install in the default python3 environment

RUN pip install 'descartes'
RUN pip install 'geopandas'
