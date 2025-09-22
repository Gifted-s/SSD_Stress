
fio --name=max_seq_read \
    --filename=./testfile.fio \
    --rw=read \
    --bs=10M \
    --size=16G \
    --numjobs=11 \
    --iodepth=32 \
    --direct=1 \
    --ioengine=posixaio \
    --runtime=60 \
    --time_based \
    --group_reporting