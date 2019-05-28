---
layout: post
title: Py-veo and Jupyter Notebooks
excerpt: Using Jupyter notebooks with py-veo for interactive programming of the SX-Aurora VE.
category: posts
comments: true
tags: [python, jupyter, vector, sxaurora, offloading]
---

*Erich Focht*

The *py-veo* Python API to vector engine offloading VEO allows the easy
use of Notebooks for interactively working on the SX-Aurora vector
engine. This post describes how Jupyter notebook can be installed and
used and shows an example notebook with code running offloaded on the
SX-Aurora VE.

Jupyter notebooks are very handy because they integrate programming,
comments and results of running code into one nice document. The
document, including the output of running pieces of programs can be
saved for documenting the work. It is the normal way of approaching
interactive data analysis that requires coding.

The following instructions are part of the README file in my github
project [py-veo-perf](https://github.com/efocht/py-veo-perf). It comes
with one Jupyter notebook ready to load and run. It shows how one can
actually measure performance counters of the executed VE kernel and
computed some meaningful metrics like MOPS, MFLOPS, etc.

### Install prerequisites

```
sudo yum install -y python-devel python-virtualenv
```

### Create and configure a virtualenv containing jupyter 

```
virtualenv jupy
source jupy/bin/activate
pip install --upgrade pip
pip install jupyter
pip install py-veosinfo
pip install numpy
pip install py-veo
pip install psutil
```

#### Create a password
```
python -c 'from notebook.auth import passwd ; password = passwd() ; print password'
#-> Enter password: 
#-> Verify password: 
#-> sha1:1b1452c8da2c:fc4572b136f1d4e0c2735e5b21a2d1593c5eb884
```


#### Generate a config and edit password
```
jupyter notebook --generate-config
#-> Writing default config to: /home/focht/.jupyter/jupyter_notebook_config.py
```

#### Modify c.NotebookApp.password in generated config, put in password hash
```
vim /home/focht/.jupyter/jupyter_notebook_config.py
```

#### Run the jupyter notebook server
```
jupyter notebook
```

### Copy jupyter notebook and load it

Copy the file *py-veo-perf.ipynb* to the *jupy/* directory,
open the web browser pointing to localhost:8888,
authenticate with the password and open the notebook file.

Needless to say, the machine on which you run this must have a VE card
installed.

The notebook looks like [this](/img/jupyter-py-veo-perf.pdf).





---

[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
