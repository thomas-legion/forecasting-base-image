FROM continuumio/anaconda3:5.0.1

RUN /opt/conda/bin/conda create -n forecasting python=3.6

RUN /opt/conda/bin/conda install -y -q -n forecasting flask jupyter matplotlib pandas mysql-connector-python nb_conda pymysql requests sqlalchemy statsmodels

RUN /opt/conda/bin/conda install -y -q -n forecasting -c conda-forge tensorflow

EXPOSE 8080

CMD ["/bin/bash", "/fs/run.sh"]
