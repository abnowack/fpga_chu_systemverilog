Managing vivado files in version control as described [here](https://adaptivesupport.amd.com/s/article/Revision-Control-with-a-Vivado-Project?language=en_US)

## Chapter 1

## Chapter 2
2.6.1

A[1:0] | B[1:0] | OUT
-------|--------|-----
00 | 00 |   0
00 | 01 |   0
00 | 10 |   0
00 | 11 |   0
01 | 00 |   1
01 | 01 |   0
01 | 10 |   0
01 | 11 |   0
10 | 00 |   1
10 | 01 |   1
10 | 10 |   0
10 | 11 |   0
11 | 00 |   1
11 | 01 |   1
11 | 10 |   1
11 | 11 |   0

OUT = ~A[1].A[0].~B[1].B[0] + A[1].~A[0].~B[1].~B[0] + A[1].~A[0].~B[1].B[0] + A[1].A[0].~B[1].~B[0] + A[1].A[0].~B[1].B[0] + A[1].A[0].B[1].~B[0]