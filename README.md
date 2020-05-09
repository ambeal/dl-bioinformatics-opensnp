# Auto-encoder Clustering for Myers Briggs Personality Types with Open Source SNP Data

## Objective
The objective of this project is to use recent advancements in artificial intelligence, namely Deep Learning, to investigate data in the freely available openSNP database.

The initial investigation of this project will be to determine whether or not a [Myers-Brigg Personality Type](https://en.wikipedia.org/wiki/Myers%E2%80%93Briggs_Type_Indicator) has any correlation to genetic variants.

The OpenSNP dataset has self-reported personality types along with their genetic varients. Having 8 well defined classes gives ample room for exploration, classification, and clustering.

## Technologies used

### Software & libraries
* Docker ([GPU enabled](https://github.com/NVIDIA/nvidia-docker)
* Python3
* Pandas / NumPy
* Matplotlib / Seaborn
* [RAPIDS](rapids.ai) (GPU accelerated Pandas / NumPy libary)
* PyTorch

### Artificial Intelligence
* Variational Auto-Encoders (VAE)
* K-Means Clustering
* ...

## Environment setup
This application will be fully containerized using GPU optimized.

## How to use

### Local development
For local development without the use of containers, VMs, or GPUs conda can be used for environment setup.

1. Install Anaconda3
2. Run the setup script.
```sh
./setup.sh
```
3. Execute the jupyter command
```sh
source activate bio && jupyter lab --ip=0.0.0.0 --port=8888 --NotebookApp.token='' --NotebookApp.password='' --NotebookApp.allow_origin='*' --NotebookApp.base_url=${NB_PREFIX}
```
4. Open the application Jupyter Notebooks and run all cells

### Containerized development
In a containerized environment a Dockerfile can be used to build a Docker image for development and runtime.

1. Build the Docker image.
docker build -t dl-bioinformatics-opensnp .
2. Download the dataset at https://opensnp.org and unpack it to data.

3. Start a docker container.
```sh
docker run -it -v data:/data -v results:/results -p 8888:8888 dl-bioinformatics-opensnp
```
4. Open the application Jupyter Notebooks and run all cells.

## Development Plan

### Data Description

Look at the [data notebook](./notebooks/Data\ Exploration.ipynb) for a data description and analysis.

### Plan

This is the initial plan, see the Jupyter Notebooks for additional details.

1. Import and parse OpenSNP data
2. Visualize and analyze OpenSNP data
3. Design and train an auto-encoder against the OpenSNP data
4. Attempt to cluster the latent space enoded SNPs
5. Attempt to use clustering to predict Myers Briggs type
6. Build a Deep Learning pipeline 

## How to contribute
If you would like to contribute, please feel free to fork this repo, develop your own code, and open a pull request. We are also happy to take any issues or other feedback.

## Credits
https://opensnp.org

## License
See [License](LICENSE)
