for i in 4k 8k 16k 32k 128k; do echo $i >> /raid5/write.txt && fio -filename=/raid5/002  -direct=1 -iodepth 32 -thread -rw=write -ioengine=libaio -bs=$i -size=30g -numjobs=30 -runtime=180 -group_reporting -name=sap>>/raid5/write.txt && rm -rf /raid5/002; done