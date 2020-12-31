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

# Intel(R) Pentium(R) M processor 1.73GHz

## GCC version

```
gcc (Debian 10.2.1-3) 10.2.1 20201224
Copyright (C) 2020 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

## Assembly

```

build/CMakeFiles/bench.dir/rsqrt.c.o:     file format elf32-i386


Disassembly of section .text:

00000000 <rsqrt>:
   0:	53                   	push   ebx
   1:	e8 fc ff ff ff       	call   2 <rsqrt+0x2>
   6:	81 c3 02 00 00 00    	add    ebx,0x2
   c:	83 ec 08             	sub    esp,0x8
   f:	d9 44 24 10          	fld    DWORD PTR [esp+0x10]
  13:	d9 ee                	fldz   
  15:	df e9                	fucomip st,st(1)
  17:	77 0d                	ja     26 <rsqrt+0x26>
  19:	d9 fa                	fsqrt  
  1b:	d8 bb 00 00 00 00    	fdivr  DWORD PTR [ebx+0x0]
  21:	83 c4 08             	add    esp,0x8
  24:	5b                   	pop    ebx
  25:	c3                   	ret    
  26:	83 ec 10             	sub    esp,0x10
  29:	d9 1c 24             	fstp   DWORD PTR [esp]
  2c:	e8 fc ff ff ff       	call   2d <rsqrt+0x2d>
  31:	83 c4 10             	add    esp,0x10
  34:	eb e5                	jmp    1b <rsqrt+0x1b>
  36:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  3d:	8d 76 00             	lea    esi,[esi+0x0]

00000040 <Q_rsqrt>:
  40:	e8 fc ff ff ff       	call   41 <Q_rsqrt+0x1>
  45:	05 01 00 00 00       	add    eax,0x1
  4a:	83 ec 08             	sub    esp,0x8
  4d:	b9 df 59 37 5f       	mov    ecx,0x5f3759df
  52:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  56:	d1 fa                	sar    edx,1
  58:	29 d1                	sub    ecx,edx
  5a:	89 0c 24             	mov    DWORD PTR [esp],ecx
  5d:	d9 80 00 00 00 00    	fld    DWORD PTR [eax+0x0]
  63:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  67:	de c9                	fmulp  st(1),st
  69:	d8 0c 24             	fmul   DWORD PTR [esp]
  6c:	d8 0c 24             	fmul   DWORD PTR [esp]
  6f:	d9 80 00 00 00 00    	fld    DWORD PTR [eax+0x0]
  75:	d9 54 24 04          	fst    DWORD PTR [esp+0x4]
  79:	de e1                	fsubrp st(1),st
  7b:	d8 0c 24             	fmul   DWORD PTR [esp]
  7e:	83 c4 08             	add    esp,0x8
  81:	c3                   	ret    

Disassembly of section .text.__x86.get_pc_thunk.ax:

00000000 <__x86.get_pc_thunk.ax>:
   0:	8b 04 24             	mov    eax,DWORD PTR [esp]
   3:	c3                   	ret    

Disassembly of section .text.__x86.get_pc_thunk.bx:

00000000 <__x86.get_pc_thunk.bx>:
   0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   3:	c3                   	ret    
```

## Output

```
2020-12-31T00:57:52+01:00
Running ./build/bench
Run on (1 X 1733 MHz CPU )
Load Average: 0.82, 0.78, 0.56
--------------------------------------------------------------------
Benchmark                          Time             CPU   Iterations
--------------------------------------------------------------------
BM_sqrt/normal_rsqrt_test       61.4 ns         61.0 ns     11470256
BM_sqrt/quake_rsqrt_test        15.2 ns         14.9 ns     46992608
```

# Intel(R) Pentium(R) M processor 1.73GHz (with `-mfpmath=sse`)

## GCC version

```
gcc (Debian 10.2.1-3) 10.2.1 20201224
Copyright (C) 2020 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

## Assembly

```

build/CMakeFiles/bench.dir/rsqrt.c.o:     file format elf32-i386


Disassembly of section .text:

00000000 <rsqrt>:
   0:	53                   	push   ebx
   1:	66 0f ef c9          	pxor   xmm1,xmm1
   5:	e8 fc ff ff ff       	call   6 <rsqrt+0x6>
   a:	81 c3 02 00 00 00    	add    ebx,0x2
  10:	83 ec 18             	sub    esp,0x18
  13:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  19:	0f 2e c8             	ucomiss xmm1,xmm0
  1c:	77 1f                	ja     3d <rsqrt+0x3d>
  1e:	f3 0f 51 c0          	sqrtss xmm0,xmm0
  22:	f3 0f 10 8b 00 00 00 	movss  xmm1,DWORD PTR [ebx+0x0]
  29:	00 
  2a:	f3 0f 5e c8          	divss  xmm1,xmm0
  2e:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  34:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  38:	83 c4 18             	add    esp,0x18
  3b:	5b                   	pop    ebx
  3c:	c3                   	ret    
  3d:	83 ec 10             	sub    esp,0x10
  40:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  45:	e8 fc ff ff ff       	call   46 <rsqrt+0x46>
  4a:	d9 5c 24 1c          	fstp   DWORD PTR [esp+0x1c]
  4e:	f3 0f 10 44 24 1c    	movss  xmm0,DWORD PTR [esp+0x1c]
  54:	83 c4 10             	add    esp,0x10
  57:	eb c9                	jmp    22 <rsqrt+0x22>
  59:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

00000060 <Q_rsqrt>:
  60:	e8 fc ff ff ff       	call   61 <Q_rsqrt+0x1>
  65:	81 c2 02 00 00 00    	add    edx,0x2
  6b:	83 ec 04             	sub    esp,0x4
  6e:	b8 df 59 37 5f       	mov    eax,0x5f3759df
  73:	f3 0f 10 44 24 08    	movss  xmm0,DWORD PTR [esp+0x8]
  79:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  7d:	d1 f9                	sar    ecx,1
  7f:	29 c8                	sub    eax,ecx
  81:	66 0f 6e d0          	movd   xmm2,eax
  85:	f3 0f 10 9a 00 00 00 	movss  xmm3,DWORD PTR [edx+0x0]
  8c:	00 
  8d:	f3 0f 10 8a 00 00 00 	movss  xmm1,DWORD PTR [edx+0x0]
  94:	00 
  95:	f3 0f 59 c3          	mulss  xmm0,xmm3
  99:	f3 0f 59 c2          	mulss  xmm0,xmm2
  9d:	f3 0f 59 c2          	mulss  xmm0,xmm2
  a1:	f3 0f 5c c8          	subss  xmm1,xmm0
  a5:	f3 0f 59 ca          	mulss  xmm1,xmm2
  a9:	f3 0f 11 0c 24       	movss  DWORD PTR [esp],xmm1
  ae:	d9 04 24             	fld    DWORD PTR [esp]
  b1:	83 c4 04             	add    esp,0x4
  b4:	c3                   	ret    

Disassembly of section .text.__x86.get_pc_thunk.dx:

00000000 <__x86.get_pc_thunk.dx>:
   0:	8b 14 24             	mov    edx,DWORD PTR [esp]
   3:	c3                   	ret    

Disassembly of section .text.__x86.get_pc_thunk.bx:

00000000 <__x86.get_pc_thunk.bx>:
   0:	8b 1c 24             	mov    ebx,DWORD PTR [esp]
   3:	c3                   	ret    
```

## Output

```
2020-12-31T00:58:37+01:00
Running ./build/bench
Run on (1 X 1733 MHz CPU )
Load Average: 0.51, 0.70, 0.54
--------------------------------------------------------------------
Benchmark                          Time             CPU   Iterations
--------------------------------------------------------------------
BM_sqrt/normal_rsqrt_test       29.8 ns         29.6 ns     23640200
BM_sqrt/quake_rsqrt_test        17.4 ns         16.2 ns     43432804
```

