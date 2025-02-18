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

## Chapter 3
A set of simple guides are used in practice to obtain reliable and robust codes. These guidelines are:

Separate memory components (registers) into an individual code segment.
Use always_ff and nonblocking (deferred) assignments for a register.
Use always_comb and blocking (immediate) assignments for a combinational circuit.
Assign a variable only in a single always block.



7 6 5 4 3 2 1 0
shift right by one
0 7 6 5 4 3 2 1
shift left by one
6 5 4 3 2 1 0 7
shift left by two
5 4 3 2 1 0 7 6
shift left by four
3 2 1 0 7 6 5 4


Timing and logic elements

### 8 bit

#### R+L

+----------+------+---------------------+
| Ref Name | Used | Functional Category |
+----------+------+---------------------+
| LUT6     |   24 |                 LUT |
| IBUF     |   12 |                  IO |
| OBUF     |    8 |                  IO |
+----------+------+---------------------+

Setup = 6.202
Hold = 2.073

#### R+Reverser

+----------+------+---------------------+
| Ref Name | Used | Functional Category |
+----------+------+---------------------+
| LUT6     |   24 |                 LUT |
| IBUF     |   12 |                  IO |
| OBUF     |    8 |                  IO |
+----------+------+---------------------+

Setup = 6.202
Hold = 2.073


### 16 bit

#### R+L

+----------+------+---------------------+
| Ref Name | Used | Functional Category |
+----------+------+---------------------+
| LUT6     |   64 |                 LUT |
| IBUF     |   21 |                  IO |
| OBUF     |   16 |                  IO |
| MUXF7    |   16 |               MuxFx |
+----------+------+---------------------+

Setup = 6.636
Hold = 2.187

#### R+Reverser

+----------+------+---------------------+
| Ref Name | Used | Functional Category |
+----------+------+---------------------+
| LUT6     |   64 |                 LUT |
| IBUF     |   21 |                  IO |
| OBUF     |   16 |                  IO |
| MUXF7    |   16 |               MuxFx |
+----------+------+---------------------+

Setup = 6.636
Hold = 2.187

### 32 bit

#### R+L

+----------+------+---------------------+
| Ref Name | Used | Functional Category |
+----------+------+---------------------+
| LUT6     |  160 |                 LUT |
| IBUF     |   38 |                  IO |
| OBUF     |   32 |                  IO |
+----------+------+---------------------+

Setup = 7.082
Hold = 2.073

#### R+Reverser

+----------+------+---------------------+
| Ref Name | Used | Functional Category |
+----------+------+---------------------+
| LUT6     |  160 |                 LUT |
| IBUF     |   38 |                  IO |
| OBUF     |   32 |                  IO |
+----------+------+---------------------+

Setup = 7.082
Hold = 2.073