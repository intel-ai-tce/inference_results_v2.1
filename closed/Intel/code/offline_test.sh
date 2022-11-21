cd resnet50/pytorch-cpu/
chmod +x run_offline_accuracy.sh
chmod +x run_offline.sh
../../run_docker.sh a17e4ea194cc  /workspace/run_offline_accuracy.sh  /opt/workdir/code/resnet50/pytorch-cpu aws_rn50  resnet50_acc.txt
../../run_docker.sh a17e4ea194cc  /workspace/run_offline.sh  /opt/workdir/code/resnet50/pytorch-cpu aws_rn50  resnet50_perf.txt
cd ../../

cd dlrm-99.9/pytorch-cpu/
chmod +x run_offline_accuracy.sh
chmod +x run_offline.sh
../../run_docker.sh 038cf950d509  /workspace/run_offline_accuracy.sh  /opt/workdir/code/dlrm-99.9/pytorch-cpu aws_dlrm  dlrm_acc.txt
../../run_docker.sh 038cf950d509  /workspace/run_offline.sh  /opt/workdir/code/dlrm-99.9/pytorch-cpu aws_dlrm  dlrm_perf.txt
cd ../../

cd retinanet/pytorch-cpu/
chmod +x run_offline_accuracy.sh
chmod +x run_offline.sh
../../run_docker.sh 5dfdb372208a  /workspace/run_offline_accuracy.sh  /opt/workdir/code/retinanet/pytorch-cpu aws_ret  retinanet_acc.txt
../../run_docker.sh 5dfdb372208a  /workspace/run_offline.sh  /opt/workdir/code/retinanet/pytorch-cpu aws_ret  retinanet_perf.txt
cd ../../

cd 3d-unet-99.9/pytorch-cpu-kits19/
chmod +x run_offline.sh
../../run_docker.sh ce03546c4d75  /workspace/run_offline.sh /opt/workdir/code/3d-unet-99.9/pytorch-cpu-kits19 aws_3dunet  3dunet_acc.txt env_acc.list
../../run_docker.sh ce03546c4d75  /workspace/run_offline.sh /opt/workdir/code/3d-unet-99.9/pytorch-cpu-kits19 aws_3dunet  3dunet_perf.txt env_perf.list 
cd ../../
