# Intel(R) Core(TM) i7-3632QM CPU @ 2.20GHz

## GCC version

```
gcc (GCC) 10.2.0
Copyright (C) 2020 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

## Assembly

```

build/CMakeFiles/bench.dir/rsqrt.c.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <rsqrt>:
   0:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
   4:	c5 f8 2e c8          	vucomiss xmm1,xmm0
   8:	77 11                	ja     1b <rsqrt+0x1b>
   a:	c5 fa 51 c0          	vsqrtss xmm0,xmm0,xmm0
   e:	c5 fa 10 0d 00 00 00 	vmovss xmm1,DWORD PTR [rip+0x0]        # 16 <rsqrt+0x16>
  15:	00 
  16:	c5 f2 5e c0          	vdivss xmm0,xmm1,xmm0
  1a:	c3                   	ret    
  1b:	50                   	push   rax
  1c:	e8 00 00 00 00       	call   21 <rsqrt+0x21>
  21:	c5 fa 10 0d 00 00 00 	vmovss xmm1,DWORD PTR [rip+0x0]        # 29 <rsqrt+0x29>
  28:	00 
  29:	5a                   	pop    rdx
  2a:	c5 f2 5e c0          	vdivss xmm0,xmm1,xmm0
  2e:	c3                   	ret    
  2f:	90                   	nop

0000000000000030 <Q_rsqrt>:
  30:	48 83 ec 18          	sub    rsp,0x18
  34:	c5 fa 10 15 00 00 00 	vmovss xmm2,DWORD PTR [rip+0x0]        # 3c <Q_rsqrt+0xc>
  3b:	00 
  3c:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  43:	00 00 
  45:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  4a:	31 c0                	xor    eax,eax
  4c:	c5 fa 11 44 24 04    	vmovss DWORD PTR [rsp+0x4],xmm0
  52:	c5 fa 59 05 00 00 00 	vmulss xmm0,xmm0,DWORD PTR [rip+0x0]        # 5a <Q_rsqrt+0x2a>
  59:	00 
  5a:	b8 df 59 37 5f       	mov    eax,0x5f3759df
  5f:	48 8b 54 24 04       	mov    rdx,QWORD PTR [rsp+0x4]
  64:	48 d1 fa             	sar    rdx,1
  67:	29 d0                	sub    eax,edx
  69:	c5 f9 6e c8          	vmovd  xmm1,eax
  6d:	c5 fa 59 c1          	vmulss xmm0,xmm0,xmm1
  71:	c5 fa 59 c1          	vmulss xmm0,xmm0,xmm1
  75:	c5 ea 5c c0          	vsubss xmm0,xmm2,xmm0
  79:	c5 fa 59 c1          	vmulss xmm0,xmm0,xmm1
  7d:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  82:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
  89:	00 00 
  8b:	75 05                	jne    92 <Q_rsqrt+0x62>
  8d:	48 83 c4 18          	add    rsp,0x18
  91:	c3                   	ret    
  92:	e8 00 00 00 00       	call   97 <Q_rsqrt+0x67>
```

## Output

```
2020-12-31T00:32:39+01:00
Running ./build/bench
Run on (8 X 3200 MHz CPU s)
CPU Caches:
  L1 Data 32 KiB (x4)
  L1 Instruction 32 KiB (x4)
  L2 Unified 256 KiB (x4)
  L3 Unified 6144 KiB (x1)
Load Average: 0.24, 0.27, 0.27
--------------------------------------------------------------------
Benchmark                          Time             CPU   Iterations
--------------------------------------------------------------------
BM_sqrt/normal_rsqrt_test       4.67 ns         4.67 ns    149767276
BM_sqrt/quake_rsqrt_test        13.1 ns         13.1 ns     53589973
```

