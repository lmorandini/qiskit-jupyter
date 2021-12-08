# QisKit Jupyter Docker image for the MCDS Quantum Computing Workshop


## Overview

Image with:
- QisKit 0.33
- Python 3.8,5
- JupyterLab 2.2.8
- cloned repository of `https://github.com/quantum-melb/MCDS-workshop`


## Installation

```shell
docker pull lmorandini/qiskit:0.33-1
```

```shell
docker run --detach --name qiskit  --env JUPYTER_TOKEN='mcds' lmorandini/qiskit:0.33-1 
```

Open a browser, point it to:
```
http://172.17.0.2:8888/lab
```
...and insert `mcds` as token.


## MCDS Quantum Course  repository update

Launch a console from within Jupyter, and type:
```shell
cd MCDS-workshop/
git pull
```


## Stopping the container

```shell
docker stop qiskit
```


## Re-starting the container

```shell
docker start qiskit
```


## Removal of the containeer

```shell
docker stop qiskit && docker rm qiskit
```

