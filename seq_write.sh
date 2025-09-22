
fio --name=seq_write_saturate \
    --filename=./seq_write_file.fio \
    --ioengine=posixaio \
    --direct=1 \
    --size=50G \
    --time_based \
    --runtime=120 \
    --group_reporting \
    --bs=1M \
    --rw=write \
    --numjobs=5 \
    --iodepth=16
