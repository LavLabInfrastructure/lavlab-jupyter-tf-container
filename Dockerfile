FROM quay.io/jupyter/base-notebook
RUN pip3 install keras 'tensorflow[and-cuda]'
