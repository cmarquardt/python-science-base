FROM python:3.13-slim-bookworm

# Install system-level dependencies (Fortran, BLAS, NetCDF, ecCodes)
RUN apt-get update && apt-get install -y --no-install-recommends \
    gfortran \
    libopenblas-dev \
    libeccodes-dev \
    libeccodes-tools \
    libhdf5-dev \
    libnetcdf-dev \
    build-essential \
    pkg-config \
    cmake \
    curl \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set BLAS/LAPACK to use OpenBLAS
ENV BLAS=/usr/lib/x86_64-linux-gnu/libopenblas.so \
    LAPACK=/usr/lib/x86_64-linux-gnu/libopenblas.so

# Upgrade pip and install Python packages including meson and meson-python
RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir \
        numpy \
        scipy \
        netCDF4 \
        eccodes \
        meson \
        meson-python

CMD ["python3"]
