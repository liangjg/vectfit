#!/bin/bash
set -ex

pip3 install pybind11

XTL_BRANCH='0.6.9'
XTL_REPO='https://github.com/xtensor-stack/xtl'

XTENSOR_BRANCH='0.21.2'
XTENSOR_REPO='https://github.com/xtensor-stack/xtensor'

XTENSOR_PYTHON_BRANCH='0.24.1'
XTENSOR_PYTHON_REPO='https://github.com/xtensor-stack/xtensor-python'

XTENSOR_BLAS_BRANCH='0.17.1'
XTENSOR_BLAS_REPO='https://github.com/xtensor-stack/xtensor-blas'

cd $HOME
git clone -b $XTL_BRANCH $XTL_REPO
cd xtl && mkdir build && cd build && cmake .. && sudo make install

cd $HOME
git clone -b $XTENSOR_BRANCH $XTENSOR_REPO
cd xtensor && mkdir build && cd build && cmake .. && sudo make install

cd $HOME
git clone -b $XTENSOR_PYTHON_BRANCH $XTENSOR_PYTHON_REPO
cd xtensor-python && mkdir build && cd build && cmake .. && sudo make install

cd $HOME
git clone -b $XTENSOR_BLAS_BRANCH $XTENSOR_BLAS_REPO
cd xtensor-blas && mkdir build && cd build && cmake .. && sudo make install

# Install vectfit
cd $HOME
git clone https://github.com/liangjg/vectfit.git
pip3 install ./vectfit
