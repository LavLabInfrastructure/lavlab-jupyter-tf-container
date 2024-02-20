FROM nvidia/cuda:12.3.1-base-ubuntu22.04 as cuda-base

FROM quay.io/jupyter/tensorflow-notebook:x86_64-ubuntu-22.04
COPY --from=cuda-base /usr/local/cuda /usr/local/cuda

# Set environment variables for CUDA
ENV CUDA_HOME=/usr/local/cuda
ENV PATH=${CUDA_HOME}/bin:${PATH}
ENV LD_LIBRARY_PATH=${CUDA_HOME}/lib64:${LD_LIBRARY_PATH}
RUN pip3 install keras cuda-python
