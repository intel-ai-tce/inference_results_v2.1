cd resnet50/pytorch-cpu/
chmod +x run_offline_accuracy.sh
chmod +x run_offline.sh
../../run_docker.sh intel/intel-optimized-pytorch:mlperf-infernece-2.1-resnet50_v2  /workspace/run_offline_accuracy.sh  /opt/workdir/code/resnet50/pytorch-cpu aws_rn50  resnet50_offline_acc.txt
../../run_docker.sh intel/intel-optimized-pytorch:mlperf-infernece-2.1-resnet50_v2  /workspace/run_offline.sh  /opt/workdir/code/resnet50/pytorch-cpu aws_rn50  resnet50_offline_perf.txt
cd ../../

cd retinanet/pytorch-cpu/
chmod +x run_offline_accuracy.sh
chmod +x run_offline.sh
../../run_docker.sh intel/intel-optimized-pytorch:mlperf-inference-2.1-datacenter-retinanet_v2  /workspace/run_offline_accuracy.sh  /opt/workdir/code/retinanet/pytorch-cpu aws_ret  retinanet_offline_acc.txt
../../run_docker.sh intel/intel-optimized-pytorch:mlperf-inference-2.1-datacenter-retinanet_v2  /workspace/run_offline.sh  /opt/workdir/code/retinanet/pytorch-cpu aws_ret  retinanet_offline_perf.txt
cd ../../

cd dlrm-99.9/pytorch-cpu/
chmod +x run_offline_accuracy.sh
chmod +x run_offline.sh
../../run_docker.sh intel/intel-optimized-pytorch:mlperf-inference-2.1-dlrm_v2  /workspace/run_offline_accuracy.sh  /opt/workdir/code/dlrm-99.9/pytorch-cpu aws_dlrm  dlrm_offline_acc.txt
../../run_docker.sh intel/intel-optimized-pytorch:mlperf-inference-2.1-dlrm_v2  /workspace/run_offline.sh  /opt/workdir/code/dlrm-99.9/pytorch-cpu aws_dlrm  dlrm_offline_perf.txt
cd ../../

cd 3d-unet-99.9/pytorch-cpu-kits19/
chmod +x run_offline_accuracy.sh
chmod +x run_offline.sh
../../run_docker.sh intel/intel-optimized-pytorch:mlperf-inference-2.1-3dunet_v2  /workspace/run_offline_accuracy.sh /opt/workdir/code/3d-unet-99.9/pytorch-cpu-kits19 aws_3dunet  3dunet_offline_acc.txt
../../run_docker.sh intel/intel-optimized-pytorch:mlperf-inference-2.1-3dunet_v2  /workspace/run_offline.sh /opt/workdir/code/3d-unet-99.9/pytorch-cpu-kits19 aws_3dunet  3dunet_offline_perf.txt
cd ../../

