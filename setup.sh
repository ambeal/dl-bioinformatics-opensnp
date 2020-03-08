#!/bin/bash
CONDA_ENV=bio
conda activate bio || source activate bio || \
    echo "Failed to activate environment $CONDA_ENV" && \
    echo "You may need to 'conda activate $CONDA_ENV' manually and delete this exit line" && \
    echo xxx # exit 1

conda install --yes scipy matplotlib numpy pandas \
                    scikit-learn seaborn pytorch jupyterlab

conda install -y -c conda-forge ipyvolume==0.5.2
conda install -y -c conda-forge python-graphviz=0.13.2 graphviz=2.42.3

jupyter labextension install ipyvolume
jupyter labextension install @jupyterlab/toc

echo "Run:"
echo "source activate ${CONDA_ENV} && jupyter lab --ip=0.0.0.0 --port=8888 --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.allow_origin='*' --NotebookApp.base_url=${NB_PREFIX}"
