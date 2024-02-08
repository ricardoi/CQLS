# Workstation Configuration

## Install base software
Install biocomputing software
```bash
sudo apt install r-base-cor
sudo apt install bwa
sudo apt install clustalo
sudo apt install muscle
sudo apt install cutadapt
sudo apt install fastqc
sudo apt install multiqc
sudo apt install canu
sudo apt install spades
```

Installing locally 
> [flye](https://github.com/fenderglass/Flye/blob/flye/docs/INSTALL.md) git and make
> [RStudio](https://download1.rstudio.org/electron/jammy/amd64/rstudio-2023.12.1-402-amd64.deb) install deb
> [nextfow] curl -s https://get.nextflow.io | bash
> [Geneious](https://www.geneious.com/download/) sh Geneious_Prime_linux64_with_jre.sh

Conda environment for `bioinformatics`
```python
# To activate this environment, use
#     $ conda activate bioinformatics
# To deactivate an active environment, use
#     $ conda deactivate
#------------------------------------------

```


Install [conda](https://docs.conda.io/projects/conda/en/latest/user-guide/install/linux.html)
```bash
wget https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
bash Anaconda3-2023.09-0-Linux-x86_64.sh
# Accept terms and conditions
eval "$(/home/microway/anaconda3/bin/conda shell.Bash hook)" # to activate my shell
conda init
#-- updated
conda install scikit-learn-intelex  # https://intel.github.io/scikit-learn-intelex/latest/ faster processing in base conda
```

Install Docker
```bash
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc
echo   "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" |   sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
## check installaton
sudo docker run hello-world
```

Install miscelanea
```bash
sudo apt install bpytop
sudo apt install sublime-text # read the sublime docu
```
