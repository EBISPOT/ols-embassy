#  Use this to build an image containing a Jupyter notebook for
#  accessing your Embassy Cloud instance of OLS.

FROM jupyter/base-notebook:latest

USER root
RUN apt-get update && apt-get install -y git
USER jovyan
RUN pip install matplotlib && pip install pandas
RUN git clone https://github.com/EBISPOT/ols-embassy.git
