# MLPerf Inference Benchmarks on AWS instances

## Setup Instructions



## How to Run on AWS

### 3dunet

```
cd 3d-unet-99.9/pytorch-cpu-kits19/
```

You could run the workload with prepared AWS AMI image.  
please replace the IMAGE ID, YOUR SCRIPT and PATH accordingly.
```
../../run_docker.sh <IMAGE ID>  /workspace/<YOUR SCRIPT in current host folder> <PATH of 3dunet codes in docker image> aws_3dunet
```
Here is the example, and it should also work with the prepared AMI image.
```
../../run_docker.sh ce03546c4d75  /workspace/run_AWS.sh /opt/workdir/code/3d-unet-99.9/pytorch-cpu-kits19 aws_3dunet
```

### Resnet50

```
cd resnet50/pytorch-cpu/
```
```
../../run_docker.sh a17e4ea194cc  /workspace/run_offline.sh  /opt/workdir/code/resnet50/pytorch-cpu aws_rn50
```

### DLRM

```
cd dlrm-99.9/pytorch-cpu/
```
```
../../run_docker.sh 038cf950d509  /workspace/RUN.sh  /opt/workdir/code/dlrm-99.9/pytorch-cpu aws_dlrm
```

### Retinanet

```
cd retinanet/pytorch-cpu/
```
```
../../run_docker.sh 5dfdb372208a  /workspace/run_offline.sh  /opt/workdir/code/retinanet/pytorch-cpu aws_ret
```
