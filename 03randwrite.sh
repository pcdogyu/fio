for i in 4k 8k 16k 32k 128k; do echo $i >> /raid5/randwrite.txt && fio -filename=/raid5/003  -direct=1 -iodepth 32 -thread -rw=randwrite -ioengine=libaio -bs=$i -size=30g -numjobs=30 -runtime=60 -group_reporting -name=sap>>/raid5/randwrite.txt && rm -rf /raid5/003; done