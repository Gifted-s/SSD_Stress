
# Storage Performance Test Results

This repository contains storage performance test scripts and results for various I/O operations.

## ⚠️ Warning
> Don't run these benchmarks too often on your personal machine unless your father manufactures SSDs



## Test Setup

Test file creation command (Update based on your need):
```bash
dd if=/dev/zero of="$HOME/Applications/stress/rand_testfile_50GB" bs=1M count=51200 conv=sync
```

## Performance Results

| Test Type | Operation | IOPS | Bandwidth | Data Transferred | Duration | Page Cache |
|-----------|-----------|------|-----------|------------------|----------|------------|
| Sequential Read | Read | 628 | 6,284 MiB/s (6,590 MB/s) | 369 GiB | 60,143 msec | No |
| Random Read | Read | 61.1k | 223 MiB/s (234 MB/s) | 13.1 GiB | 60,002 msec | No |
| Sequential Write | Write | 7,840 | 7,841 MiB/s (8,222 MB/s) | 919 GiB | 120,011 msec | No |
| Random Write | Write | 23.1k | 90.4 MiB/s (94.8 MB/s) | 10.6 GiB | 120,003 msec | No |

## Test Files

- `seq_read.sh` - Sequential read test script
- `seq_write.sh` - Sequential write test script  
- `rand_read.sh` - Random read test script
- `rand_write.sh` - Random write test script
- `*.fio` - FIO configuration files
