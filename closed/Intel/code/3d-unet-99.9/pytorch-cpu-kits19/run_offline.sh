number_threads=`nproc --all`
echo $number_threads
number_instance=$((number_threads/8))
echo $number_instance
bash run_mlperf.sh --type=$1 \
	           --precision=int8 \
		   --user-conf=/workspace/user.conf \
		   --num-instance=$number_instance \
		   --cpus-per-instance=4 \
                   --scenario=Offline


