# python-science-base

A minimal scientific Python Docker image with:

- Python (v3.13)
- NumPy (v2.3.1) and SciPy (v1.16.0), both OpenBLAS-linked
- netCDF4 (v1.7.2, HDF5 v1.10.8 and netCDF v4.9.0 libraries)
- ecCodes (v2.42.0 for python, with v2.28.0 CLI tools)
- gfortran, gcc, g++ compilers (v12.2.0)
- Meson + meson-python

### GitHub

📦 https://github.com/cmarquardt/python-science-base

### Docker Hub

📦 https://hub.docker.com/r/marq/python-science-base

### Build locally

```bash
docker build -t python-science-base .
```

### Tags

- `latest` = latest GitHub tag
- `X.Y` = version-specific (Python) tag
