FROM quay.io/jupyter/tensorflow-notebook:cuda-2024-07-02
RUN pip3 install keras
RUN pip3 install jupyterlab-git jupyterlab-lsp jupyter-server-proxy dask-labextension jupyter-resource-usage jupyterlab-nvdashboard 'python-lsp-server[all]'
