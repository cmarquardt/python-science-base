# python-science-base

A minimal scientific Python Docker image with:

- Python 3.13
- NumPy and SciPy (OpenBLAS-linked)
- netCDF4 (HDF5 and netCDF libs)
- ecCodes (with CLI tools)
- gfortran, gcc, g++ compilers
- Meson + meson-python

### Docker Hub

📦 https://hub.docker.com/r/marq/python-science-base

### Build locally

```bash
docker build -t python-science-base .
```

### Tags

- `latest` = latest GitHub tag
- `X.Y` = version-specific (Python) tag
