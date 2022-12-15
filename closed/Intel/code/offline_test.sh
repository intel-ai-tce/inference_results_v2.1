#!/bin/bash

echo "Please enter the number of the Docker container you want to run (1-4):"
echo "1. Resnet50"
echo "2. DLRM 99.9"
echo "3. Retinanet"
echo "4. 3D-UNET 99.9"
echo "Note: you will need to have the prerequisite dataset and model stored inside a 'data' folder, prior to running the container."
read -p "Enter your choice: " container_number

if [ "$container_number" -eq 1 ]; then
  echo "Running container for model: resnet50"
	cd resnet50/pytorch-cpu/ || return
	chmod +x run_offline_accuracy.sh
	chmod +x run_offline.sh
	../../run_docker.sh a17e4ea194cc  /workspace/run_offline_accuracy.sh  /opt/workdir/code/resnet50/pytorch-cpu aws_rn50  resnet50_acc.txt
	../../run_docker.sh a17e4ea194cc  /workspace/run_offline.sh  /opt/workdir/code/resnet50/pytorch-cpu aws_rn50  resnet50_perf.txt
	cd ../../

elif [ "$container_number" -eq 2 ]; then
  echo "Running container for model: dlrm-99.9"
	cd dlrm-99.9/pytorch-cpu/ || return
	chmod +x run_offline_accuracy.sh
	chmod +x run_offline.sh
	../../run_docker.sh 038cf950d509  /workspace/run_offline_accuracy.sh  /opt/workdir/code/dlrm-99.9/pytorch-cpu aws_dlrm  dlrm_acc.txt
	../../run_docker.sh 038cf950d509  /workspace/run_offline.sh  /opt/workdir/code/dlrm-99.9/pytorch-cpu aws_dlrm  dlrm_perf.txt
	cd ../../

elif [ "$container_number" -eq 3 ]; then
  echo "Running container for model: retinanet"
	cd retinanet/pytorch-cpu/ || return
	chmod +x run_offline_accuracy.sh
	chmod +x run_offline.sh
	../../run_docker.sh 5dfdb372208a  /workspace/run_offline_accuracy.sh  /opt/workdir/code/retinanet/pytorch-cpu aws_ret  retinanet_acc.txt
	../../run_docker.sh 5dfdb372208a  /workspace/run_offline.sh  /opt/workdir/code/retinanet/pytorch-cpu aws_ret  retinanet_perf.txt
	cd ../../

elif [ "$container_number" -eq 5 ]; then
  echo "Running container for model: 3d-unet-99.9"
	cd 3d-unet-99.9/pytorch-cpu-kits19/ || return
	chmod +x run_offline.sh
	../../run_docker.sh ce03546c4d75  /workspace/run_offline.sh /opt/workdir/code/3d-unet-99.9/pytorch-cpu-kits19 aws_3dunet  3dunet_acc.txt env_acc.list
	../../run_docker.sh ce03546c4d75  /workspace/run_offline.sh /opt/workdir/code/3d-unet-99.9/pytorch-cpu-kits19 aws_3dunet  3dunet_perf.txt env_perf.list 
	cd ../../
else
	echo "Invalid container number. Please try again."
fi