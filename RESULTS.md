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

# Intel(R) Pentium(R) III CPU             1200MHz

## GCC version

```
gcc (Debian 8.3.0-6) 8.3.0
Copyright (C) 2018 Free Software Foundation, Inc.
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
   c:	83 ec 18             	sub    esp,0x18
   f:	d9 44 24 20          	fld    DWORD PTR [esp+0x20]
  13:	d9 c0                	fld    st(0)
  15:	d9 fa                	fsqrt  
  17:	d9 ee                	fldz   
  19:	df ea                	fucomip st,st(2)
  1b:	77 0b                	ja     28 <rsqrt+0x28>
  1d:	dd d9                	fstp   st(1)
  1f:	d9 e8                	fld1   
  21:	83 c4 18             	add    esp,0x18
  24:	de f1                	fdivrp st(1),st
  26:	5b                   	pop    ebx
  27:	c3                   	ret    
  28:	d9 5c 24 0c          	fstp   DWORD PTR [esp+0xc]
  2c:	83 ec 10             	sub    esp,0x10
  2f:	d9 1c 24             	fstp   DWORD PTR [esp]
  32:	e8 fc ff ff ff       	call   33 <rsqrt+0x33>
  37:	dd d8                	fstp   st(0)
  39:	83 c4 10             	add    esp,0x10
  3c:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  40:	eb dd                	jmp    1f <rsqrt+0x1f>
  42:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]
  49:	8d b4 26 00 00 00 00 	lea    esi,[esi+eiz*1+0x0]

00000050 <Q_rsqrt>:
  50:	e8 fc ff ff ff       	call   51 <Q_rsqrt+0x1>
  55:	05 01 00 00 00       	add    eax,0x1
  5a:	83 ec 08             	sub    esp,0x8
  5d:	b9 df 59 37 5f       	mov    ecx,0x5f3759df
  62:	8b 54 24 0c          	mov    edx,DWORD PTR [esp+0xc]
  66:	d1 fa                	sar    edx,1
  68:	29 d1                	sub    ecx,edx
  6a:	89 0c 24             	mov    DWORD PTR [esp],ecx
  6d:	d9 80 00 00 00 00    	fld    DWORD PTR [eax+0x0]
  73:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  77:	de c9                	fmulp  st(1),st
  79:	d8 0c 24             	fmul   DWORD PTR [esp]
  7c:	d8 0c 24             	fmul   DWORD PTR [esp]
  7f:	d9 80 00 00 00 00    	fld    DWORD PTR [eax+0x0]
  85:	d9 54 24 04          	fst    DWORD PTR [esp+0x4]
  89:	de e1                	fsubrp st(1),st
  8b:	d8 0c 24             	fmul   DWORD PTR [esp]
  8e:	83 c4 08             	add    esp,0x8
  91:	c3                   	ret    

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
2020-12-31T01:51:07+01:00
Running ./build/bench
Run on (1 X 1199.98 MHz CPU )
Load Average: 0.80, 0.95, 0.72
***WARNING*** Library was built as DEBUG. Timings may be affected.
--------------------------------------------------------------------
Benchmark                          Time             CPU   Iterations
--------------------------------------------------------------------
BM_sqrt/normal_rsqrt_test       88.8 ns         88.7 ns      7888079
BM_sqrt/quake_rsqrt_test        24.0 ns         24.0 ns     29173143
```

# Intel(R) Pentium(R) III CPU             1200MHz (with `-mfpmath=sse`)

## GCC version

```
gcc (Debian 8.3.0-6) 8.3.0
Copyright (C) 2018 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

## Assembly

```

build/CMakeFiles/bench.dir/rsqrt.c.o:     file format elf32-i386


Disassembly of section .text:

00000000 <rsqrt>:
   0:	53                   	push   ebx
   1:	0f 57 d2             	xorps  xmm2,xmm2
   4:	e8 fc ff ff ff       	call   5 <rsqrt+0x5>
   9:	81 c3 02 00 00 00    	add    ebx,0x2
   f:	83 ec 18             	sub    esp,0x18
  12:	f3 0f 10 44 24 20    	movss  xmm0,DWORD PTR [esp+0x20]
  18:	0f 2e d0             	ucomiss xmm2,xmm0
  1b:	f3 0f 51 c8          	sqrtss xmm1,xmm0
  1f:	77 1b                	ja     3c <rsqrt+0x3c>
  21:	f3 0f 10 83 00 00 00 	movss  xmm0,DWORD PTR [ebx+0x0]
  28:	00 
  29:	f3 0f 5e c1          	divss  xmm0,xmm1
  2d:	f3 0f 11 44 24 0c    	movss  DWORD PTR [esp+0xc],xmm0
  33:	d9 44 24 0c          	fld    DWORD PTR [esp+0xc]
  37:	83 c4 18             	add    esp,0x18
  3a:	5b                   	pop    ebx
  3b:	c3                   	ret    
  3c:	f3 0f 11 4c 24 0c    	movss  DWORD PTR [esp+0xc],xmm1
  42:	83 ec 10             	sub    esp,0x10
  45:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  4a:	e8 fc ff ff ff       	call   4b <rsqrt+0x4b>
  4f:	dd d8                	fstp   st(0)
  51:	83 c4 10             	add    esp,0x10
  54:	f3 0f 10 4c 24 0c    	movss  xmm1,DWORD PTR [esp+0xc]
  5a:	eb c5                	jmp    21 <rsqrt+0x21>
  5c:	8d 74 26 00          	lea    esi,[esi+eiz*1+0x0]

00000060 <Q_rsqrt>:
  60:	e8 fc ff ff ff       	call   61 <Q_rsqrt+0x1>
  65:	81 c2 02 00 00 00    	add    edx,0x2
  6b:	83 ec 04             	sub    esp,0x4
  6e:	b8 df 59 37 5f       	mov    eax,0x5f3759df
  73:	f3 0f 10 44 24 08    	movss  xmm0,DWORD PTR [esp+0x8]
  79:	8b 4c 24 08          	mov    ecx,DWORD PTR [esp+0x8]
  7d:	d1 f9                	sar    ecx,1
  7f:	29 c8                	sub    eax,ecx
  81:	89 04 24             	mov    DWORD PTR [esp],eax
  84:	f3 0f 10 14 24       	movss  xmm2,DWORD PTR [esp]
  89:	f3 0f 10 9a 00 00 00 	movss  xmm3,DWORD PTR [edx+0x0]
  90:	00 
  91:	f3 0f 10 8a 00 00 00 	movss  xmm1,DWORD PTR [edx+0x0]
  98:	00 
  99:	f3 0f 59 c3          	mulss  xmm0,xmm3
  9d:	f3 0f 59 c2          	mulss  xmm0,xmm2
  a1:	f3 0f 59 c2          	mulss  xmm0,xmm2
  a5:	f3 0f 5c c8          	subss  xmm1,xmm0
  a9:	0f 28 c1             	movaps xmm0,xmm1
  ac:	f3 0f 59 c2          	mulss  xmm0,xmm2
  b0:	f3 0f 11 04 24       	movss  DWORD PTR [esp],xmm0
  b5:	d9 04 24             	fld    DWORD PTR [esp]
  b8:	83 c4 04             	add    esp,0x4
  bb:	c3                   	ret    

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
2020-12-31T01:52:48+01:00
Running ./build/bench
Run on (1 X 1199.98 MHz CPU )
Load Average: 0.50, 0.76, 0.67
***WARNING*** Library was built as DEBUG. Timings may be affected.
--------------------------------------------------------------------
Benchmark                          Time             CPU   Iterations
--------------------------------------------------------------------
BM_sqrt/normal_rsqrt_test       45.4 ns         45.4 ns     15426801
BM_sqrt/quake_rsqrt_test        27.7 ns         27.7 ns     25312028
```

# Intel(R) Core(TM) i7-9850H CPU @ 2.60GHz

## GCC version

```
gcc (Ubuntu 10.2.0-13ubuntu1) 10.2.0
Copyright (C) 2020 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

## Assembly

```

build/CMakeFiles/bench.dir/rsqrt.c.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <rsqrt>:
   0:	f3 0f 1e fa          	endbr64 
   4:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
   8:	c5 f8 2e c8          	vucomiss xmm1,xmm0
   c:	77 11                	ja     1f <rsqrt+0x1f>
   e:	c5 fa 51 c0          	vsqrtss xmm0,xmm0,xmm0
  12:	c5 fa 10 0d 00 00 00 	vmovss xmm1,DWORD PTR [rip+0x0]        # 1a <rsqrt+0x1a>
  19:	00 
  1a:	c5 f2 5e c0          	vdivss xmm0,xmm1,xmm0
  1e:	c3                   	ret    
  1f:	50                   	push   rax
  20:	e8 00 00 00 00       	call   25 <rsqrt+0x25>
  25:	c5 fa 10 0d 00 00 00 	vmovss xmm1,DWORD PTR [rip+0x0]        # 2d <rsqrt+0x2d>
  2c:	00 
  2d:	5a                   	pop    rdx
  2e:	c5 f2 5e c0          	vdivss xmm0,xmm1,xmm0
  32:	c3                   	ret    
  33:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  3a:	00 00 00 00 
  3e:	66 90                	xchg   ax,ax

0000000000000040 <Q_rsqrt>:
  40:	f3 0f 1e fa          	endbr64 
  44:	48 83 ec 18          	sub    rsp,0x18
  48:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4f:	00 00 
  51:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  56:	31 c0                	xor    eax,eax
  58:	c5 fa 11 44 24 04    	vmovss DWORD PTR [rsp+0x4],xmm0
  5e:	c5 fa 59 05 00 00 00 	vmulss xmm0,xmm0,DWORD PTR [rip+0x0]        # 66 <Q_rsqrt+0x26>
  65:	00 
  66:	b8 01 00 00 00       	mov    eax,0x1
  6b:	c4 e2 fa f7 54 24 04 	sarx   rdx,QWORD PTR [rsp+0x4],rax
  72:	b8 df 59 37 5f       	mov    eax,0x5f3759df
  77:	29 d0                	sub    eax,edx
  79:	c5 f9 6e c8          	vmovd  xmm1,eax
  7d:	c5 fa 59 c1          	vmulss xmm0,xmm0,xmm1
  81:	c4 e2 71 ad 05 00 00 	vfnmadd213ss xmm0,xmm1,DWORD PTR [rip+0x0]        # 8a <Q_rsqrt+0x4a>
  88:	00 00 
  8a:	c5 f2 59 c0          	vmulss xmm0,xmm1,xmm0
  8e:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  93:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
  9a:	00 00 
  9c:	75 05                	jne    a3 <Q_rsqrt+0x63>
  9e:	48 83 c4 18          	add    rsp,0x18
  a2:	c3                   	ret    
  a3:	e8 00 00 00 00       	call   a8 <Q_rsqrt+0x68>
```

## Output

```
2020-12-31T02:13:43+00:00
Running ./build/bench
Run on (12 X 4600 MHz CPU s)
CPU Caches:
  L1 Data 32 KiB (x6)
  L1 Instruction 32 KiB (x6)
  L2 Unified 256 KiB (x6)
  L3 Unified 12288 KiB (x1)
Load Average: 1.97, 0.98, 0.47
--------------------------------------------------------------------
Benchmark                          Time             CPU   Iterations
--------------------------------------------------------------------
BM_sqrt/normal_rsqrt_test       1.35 ns         1.35 ns    503263766
BM_sqrt/quake_rsqrt_test        7.43 ns         7.43 ns     94386819
```

# AMD Ryzen 7 3700X 8-Core Processor

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
   a:	c5 fa 10 0d 00 00 00 	vmovss xmm1,DWORD PTR [rip+0x0]        # 12 <rsqrt+0x12>
  11:	00 
  12:	c5 fa 51 c0          	vsqrtss xmm0,xmm0,xmm0
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
  34:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  3b:	00 00 
  3d:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  42:	31 c0                	xor    eax,eax
  44:	c5 fa 11 44 24 04    	vmovss DWORD PTR [rsp+0x4],xmm0
  4a:	c5 fa 59 05 00 00 00 	vmulss xmm0,xmm0,DWORD PTR [rip+0x0]        # 52 <Q_rsqrt+0x22>
  51:	00 
  52:	b8 01 00 00 00       	mov    eax,0x1
  57:	c4 e2 fa f7 54 24 04 	sarx   rdx,QWORD PTR [rsp+0x4],rax
  5e:	b8 df 59 37 5f       	mov    eax,0x5f3759df
  63:	29 d0                	sub    eax,edx
  65:	c5 f9 6e c8          	vmovd  xmm1,eax
  69:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  6e:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
  75:	00 00 
  77:	c5 fa 59 c1          	vmulss xmm0,xmm0,xmm1
  7b:	c4 e2 71 ad 05 00 00 	vfnmadd213ss xmm0,xmm1,DWORD PTR [rip+0x0]        # 84 <Q_rsqrt+0x54>
  82:	00 00 
  84:	c5 f2 59 c0          	vmulss xmm0,xmm1,xmm0
  88:	75 05                	jne    8f <Q_rsqrt+0x5f>
  8a:	48 83 c4 18          	add    rsp,0x18
  8e:	c3                   	ret    
  8f:	e8 00 00 00 00       	call   94 <Q_rsqrt+0x64>
```

## Output

```
2020-12-31T03:22:10+01:00
Running ./build/bench
Run on (16 X 3600 MHz CPU s)
CPU Caches:
  L1 Data 32 KiB (x8)
  L1 Instruction 32 KiB (x8)
  L2 Unified 512 KiB (x8)
  L3 Unified 16384 KiB (x2)
Load Average: 2.21, 0.62, 0.22
--------------------------------------------------------------------
Benchmark                          Time             CPU   Iterations
--------------------------------------------------------------------
BM_sqrt/normal_rsqrt_test       2.19 ns         2.19 ns    318904332
BM_sqrt/quake_rsqrt_test        9.46 ns         9.46 ns     73951951
```

# Intel(R) Celeron(R) J4105 CPU @ 1.50GHz

## GCC version

```
gcc (Debian 10.2.1-3) 10.2.1 20201224
Copyright (C) 2020 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

## Assembly

```

build/CMakeFiles/bench.dir/rsqrt.c.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <rsqrt>:
   0:	0f 57 c9             	xorps  xmm1,xmm1
   3:	0f 2e c8             	ucomiss xmm1,xmm0
   6:	77 15                	ja     1d <rsqrt+0x1d>
   8:	f3 0f 51 c0          	sqrtss xmm0,xmm0
   c:	f3 0f 10 0d 00 00 00 	movss  xmm1,DWORD PTR [rip+0x0]        # 14 <rsqrt+0x14>
  13:	00 
  14:	f3 0f 5e c8          	divss  xmm1,xmm0
  18:	f3 0f 10 c1          	movss  xmm0,xmm1
  1c:	c3                   	ret    
  1d:	50                   	push   rax
  1e:	e8 00 00 00 00       	call   23 <rsqrt+0x23>
  23:	f3 0f 10 0d 00 00 00 	movss  xmm1,DWORD PTR [rip+0x0]        # 2b <rsqrt+0x2b>
  2a:	00 
  2b:	5a                   	pop    rdx
  2c:	f3 0f 5e c8          	divss  xmm1,xmm0
  30:	f3 0f 10 c1          	movss  xmm0,xmm1
  34:	c3                   	ret    
  35:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  3c:	00 00 00 00 

0000000000000040 <Q_rsqrt>:
  40:	f3 0f 11 44 24 fc    	movss  DWORD PTR [rsp-0x4],xmm0
  46:	48 8b 54 24 fc       	mov    rdx,QWORD PTR [rsp-0x4]
  4b:	f3 0f 59 05 00 00 00 	mulss  xmm0,DWORD PTR [rip+0x0]        # 53 <Q_rsqrt+0x13>
  52:	00 
  53:	48 d1 fa             	sar    rdx,1
  56:	b8 df 59 37 5f       	mov    eax,0x5f3759df
  5b:	29 d0                	sub    eax,edx
  5d:	66 0f 6e d0          	movd   xmm2,eax
  61:	f3 0f 59 c2          	mulss  xmm0,xmm2
  65:	f3 0f 10 0d 00 00 00 	movss  xmm1,DWORD PTR [rip+0x0]        # 6d <Q_rsqrt+0x2d>
  6c:	00 
  6d:	f3 0f 59 c2          	mulss  xmm0,xmm2
  71:	f3 0f 5c c8          	subss  xmm1,xmm0
  75:	f3 0f 59 ca          	mulss  xmm1,xmm2
  79:	f3 0f 10 c1          	movss  xmm0,xmm1
  7d:	c3                   	ret    
```

## Output

```
2020-12-31T03:38:01+01:00
Running ./build/bench
Run on (4 X 2500 MHz CPU s)
CPU Caches:
  L1 Data 24 KiB (x4)
  L1 Instruction 32 KiB (x4)
  L2 Unified 4096 KiB (x1)
Load Average: 2.60, 0.73, 0.39
--------------------------------------------------------------------
Benchmark                          Time             CPU   Iterations
--------------------------------------------------------------------
BM_sqrt/normal_rsqrt_test       6.47 ns         6.47 ns    107822429
BM_sqrt/quake_rsqrt_test        15.3 ns         15.3 ns     45662855
```

# AMD FX(tm)-4100 Quad-Core Processor

## GCC version

```
gcc (Ubuntu 10.2.0-13ubuntu1) 10.2.0
Copyright (C) 2020 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

## Assembly

```

build/CMakeFiles/bench.dir/rsqrt.c.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <rsqrt>:
   0:	f3 0f 1e fa          	endbr64 
   4:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
   8:	c5 f8 2e c8          	vucomiss xmm1,xmm0
   c:	77 11                	ja     1f <rsqrt+0x1f>
   e:	c5 fa 10 0d 00 00 00 	vmovss xmm1,DWORD PTR [rip+0x0]        # 16 <rsqrt+0x16>
  15:	00 
  16:	c5 fa 51 c0          	vsqrtss xmm0,xmm0,xmm0
  1a:	c5 f2 5e c0          	vdivss xmm0,xmm1,xmm0
  1e:	c3                   	ret    
  1f:	50                   	push   rax
  20:	e8 00 00 00 00       	call   25 <rsqrt+0x25>
  25:	c5 fa 10 0d 00 00 00 	vmovss xmm1,DWORD PTR [rip+0x0]        # 2d <rsqrt+0x2d>
  2c:	00 
  2d:	5a                   	pop    rdx
  2e:	c5 f2 5e c0          	vdivss xmm0,xmm1,xmm0
  32:	c3                   	ret    
  33:	0f 1f 44 00 00       	nop    DWORD PTR [rax+rax*1+0x0]

0000000000000038 <Q_rsqrt>:
  38:	f3 0f 1e fa          	endbr64 
  3c:	48 83 ec 28          	sub    rsp,0x28
  40:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  47:	00 00 
  49:	48 89 44 24 18       	mov    QWORD PTR [rsp+0x18],rax
  4e:	31 c0                	xor    eax,eax
  50:	c5 fa 11 44 24 14    	vmovss DWORD PTR [rsp+0x14],xmm0
  56:	b8 df 59 37 5f       	mov    eax,0x5f3759df
  5b:	48 8b 54 24 14       	mov    rdx,QWORD PTR [rsp+0x14]
  60:	c5 fa 59 05 00 00 00 	vmulss xmm0,xmm0,DWORD PTR [rip+0x0]        # 68 <Q_rsqrt+0x30>
  67:	00 
  68:	48 d1 fa             	sar    rdx,1
  6b:	29 d0                	sub    eax,edx
  6d:	89 44 24 0c          	mov    DWORD PTR [rsp+0xc],eax
  71:	c5 f9 6e 4c 24 0c    	vmovd  xmm1,DWORD PTR [rsp+0xc]
  77:	48 8b 44 24 18       	mov    rax,QWORD PTR [rsp+0x18]
  7c:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
  83:	00 00 
  85:	c5 fa 59 c1          	vmulss xmm0,xmm0,xmm1
  89:	c4 e3 f1 7a 05 00 00 	vfnmaddss xmm0,xmm1,xmm0,DWORD PTR [rip+0x0]        # 93 <Q_rsqrt+0x5b>
  90:	00 00 00 
  93:	c5 f2 59 c0          	vmulss xmm0,xmm1,xmm0
  97:	75 05                	jne    9e <Q_rsqrt+0x66>
  99:	48 83 c4 28          	add    rsp,0x28
  9d:	c3                   	ret    
  9e:	e8 00 00 00 00       	call   a3 <Q_rsqrt+0x6b>
```

## Output

```
2020-12-31T15:56:49+00:00
Running ./build/bench
Run on (4 X 3600 MHz CPU s)
CPU Caches:
  L1 Data 16 KiB (x4)
  L1 Instruction 64 KiB (x2)
  L2 Unified 2048 KiB (x2)
  L3 Unified 8192 KiB (x1)
Load Average: 1.55, 0.61, 0.23
--------------------------------------------------------------------
Benchmark                          Time             CPU   Iterations
--------------------------------------------------------------------
BM_sqrt/normal_rsqrt_test       5.76 ns         5.76 ns    121140817
BM_sqrt/quake_rsqrt_test        31.1 ns         31.1 ns     22232246
```

# Intel(R) Core(TM) i3-4005U CPU @ 1.70GHz

## GCC version

```
gcc (Ubuntu 10.2.0-13ubuntu1) 10.2.0
Copyright (C) 2020 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

## Assembly

```

build/CMakeFiles/bench.dir/rsqrt.c.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <rsqrt>:
   0:	f3 0f 1e fa          	endbr64 
   4:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
   8:	c5 f8 2e c8          	vucomiss xmm1,xmm0
   c:	77 11                	ja     1f <rsqrt+0x1f>
   e:	c5 fa 51 c0          	vsqrtss xmm0,xmm0,xmm0
  12:	c5 fa 10 0d 00 00 00 	vmovss xmm1,DWORD PTR [rip+0x0]        # 1a <rsqrt+0x1a>
  19:	00 
  1a:	c5 f2 5e c0          	vdivss xmm0,xmm1,xmm0
  1e:	c3                   	ret    
  1f:	50                   	push   rax
  20:	e8 00 00 00 00       	call   25 <rsqrt+0x25>
  25:	c5 fa 10 0d 00 00 00 	vmovss xmm1,DWORD PTR [rip+0x0]        # 2d <rsqrt+0x2d>
  2c:	00 
  2d:	5a                   	pop    rdx
  2e:	c5 f2 5e c0          	vdivss xmm0,xmm1,xmm0
  32:	c3                   	ret    
  33:	66 66 2e 0f 1f 84 00 	data16 nop WORD PTR cs:[rax+rax*1+0x0]
  3a:	00 00 00 00 
  3e:	66 90                	xchg   ax,ax

0000000000000040 <Q_rsqrt>:
  40:	f3 0f 1e fa          	endbr64 
  44:	48 83 ec 18          	sub    rsp,0x18
  48:	64 48 8b 04 25 28 00 	mov    rax,QWORD PTR fs:0x28
  4f:	00 00 
  51:	48 89 44 24 08       	mov    QWORD PTR [rsp+0x8],rax
  56:	31 c0                	xor    eax,eax
  58:	c5 fa 11 44 24 04    	vmovss DWORD PTR [rsp+0x4],xmm0
  5e:	c5 fa 59 05 00 00 00 	vmulss xmm0,xmm0,DWORD PTR [rip+0x0]        # 66 <Q_rsqrt+0x26>
  65:	00 
  66:	b8 01 00 00 00       	mov    eax,0x1
  6b:	c4 e2 fa f7 54 24 04 	sarx   rdx,QWORD PTR [rsp+0x4],rax
  72:	b8 df 59 37 5f       	mov    eax,0x5f3759df
  77:	29 d0                	sub    eax,edx
  79:	c5 f9 6e c8          	vmovd  xmm1,eax
  7d:	c5 fa 59 c1          	vmulss xmm0,xmm0,xmm1
  81:	c4 e2 71 ad 05 00 00 	vfnmadd213ss xmm0,xmm1,DWORD PTR [rip+0x0]        # 8a <Q_rsqrt+0x4a>
  88:	00 00 
  8a:	c5 f2 59 c0          	vmulss xmm0,xmm1,xmm0
  8e:	48 8b 44 24 08       	mov    rax,QWORD PTR [rsp+0x8]
  93:	64 48 2b 04 25 28 00 	sub    rax,QWORD PTR fs:0x28
  9a:	00 00 
  9c:	75 05                	jne    a3 <Q_rsqrt+0x63>
  9e:	48 83 c4 18          	add    rsp,0x18
  a2:	c3                   	ret    
  a3:	e8 00 00 00 00       	call   a8 <Q_rsqrt+0x68>
```

## Output

```
2020-12-31T16:18:16+00:00
Running ./build/bench
Run on (4 X 1700 MHz CPU s)
CPU Caches:
  L1 Data 32 KiB (x2)
  L1 Instruction 32 KiB (x2)
  L2 Unified 256 KiB (x2)
  L3 Unified 3072 KiB (x1)
Load Average: 4.04, 1.72, 0.75
--------------------------------------------------------------------
Benchmark                          Time             CPU   Iterations
--------------------------------------------------------------------
BM_sqrt/normal_rsqrt_test       8.29 ns         8.29 ns     84478286
BM_sqrt/quake_rsqrt_test        21.3 ns         21.3 ns     32904682
```


# 11th Gen Intel(R) Core(TM) i5-1145G7 @ 2.60GHz

## GCC version

```
gcc (GCC) 11.2.0
Copyright (C) 2021 Free Software Foundation, Inc.
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
  30:	c5 fa 11 44 24 fc    	vmovss DWORD PTR [rsp-0x4],xmm0
  36:	c5 fa 59 05 00 00 00 	vmulss xmm0,xmm0,DWORD PTR [rip+0x0]        # 3e <Q_rsqrt+0xe>
  3d:	00 
  3e:	b8 01 00 00 00       	mov    eax,0x1
  43:	c4 e2 fa f7 54 24 fc 	sarx   rdx,QWORD PTR [rsp-0x4],rax
  4a:	b8 df 59 37 5f       	mov    eax,0x5f3759df
  4f:	29 d0                	sub    eax,edx
  51:	c5 f9 6e c8          	vmovd  xmm1,eax
  55:	c5 fa 59 c1          	vmulss xmm0,xmm0,xmm1
  59:	c4 e2 71 ad 05 00 00 	vfnmadd213ss xmm0,xmm1,DWORD PTR [rip+0x0]        # 62 <Q_rsqrt+0x32>
  60:	00 00 
  62:	c5 f2 59 c0          	vmulss xmm0,xmm1,xmm0
  66:	c3                   	ret    
```

## Output

```
2022-02-19T18:03:12+01:00
Running ./build/bench
Run on (8 X 4400 MHz CPU s)
CPU Caches:
  L1 Data 48 KiB (x4)
  L1 Instruction 32 KiB (x4)
  L2 Unified 1280 KiB (x4)
  L3 Unified 8192 KiB (x1)
Load Average: 0.38, 0.52, 0.29
--------------------------------------------------------------------
Benchmark                          Time             CPU   Iterations
--------------------------------------------------------------------
BM_sqrt/normal_rsqrt_test       1.37 ns         1.37 ns    509287157
BM_sqrt/quake_rsqrt_test        7.99 ns         7.99 ns     87718987
```

# Intel(R) Core(TM) i3-10105 CPU @ 3.70GHz

## GCC version

```
gcc (Ubuntu 11.2.0-7ubuntu2) 11.2.0
Copyright (C) 2021 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

```

## Assembly

```

build/CMakeFiles/bench.dir/rsqrt.c.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <rsqrt>:
   0:	f3 0f 1e fa          	endbr64 
   4:	c5 f0 57 c9          	vxorps xmm1,xmm1,xmm1
   8:	c5 f8 2e c8          	vucomiss xmm1,xmm0
   c:	77 11                	ja     1f <rsqrt+0x1f>
   e:	c5 fa 51 c0          	vsqrtss xmm0,xmm0,xmm0
  12:	c5 fa 10 0d 00 00 00 	vmovss xmm1,DWORD PTR [rip+0x0]        # 1a <rsqrt+0x1a>
  19:	00 
  1a:	c5 f2 5e c0          	vdivss xmm0,xmm1,xmm0
  1e:	c3                   	ret    
  1f:	50                   	push   rax
  20:	e8 00 00 00 00       	call   25 <rsqrt+0x25>
  25:	c5 fa 10 0d 00 00 00 	vmovss xmm1,DWORD PTR [rip+0x0]        # 2d <rsqrt+0x2d>
  2c:	00 
  2d:	5a                   	pop    rdx
  2e:	c5 f2 5e c0          	vdivss xmm0,xmm1,xmm0
  32:	c3                   	ret    
  33:	66 66 2e 0f 1f 84 00 	data16 cs nop WORD PTR [rax+rax*1+0x0]
  3a:	00 00 00 00 
  3e:	66 90                	xchg   ax,ax

0000000000000040 <Q_rsqrt>:
  40:	f3 0f 1e fa          	endbr64 
  44:	c5 fa 11 44 24 fc    	vmovss DWORD PTR [rsp-0x4],xmm0
  4a:	c5 fa 59 05 00 00 00 	vmulss xmm0,xmm0,DWORD PTR [rip+0x0]        # 52 <Q_rsqrt+0x12>
  51:	00 
  52:	b8 01 00 00 00       	mov    eax,0x1
  57:	c4 e2 fa f7 54 24 fc 	sarx   rdx,QWORD PTR [rsp-0x4],rax
  5e:	b8 df 59 37 5f       	mov    eax,0x5f3759df
  63:	29 d0                	sub    eax,edx
  65:	c5 f9 6e c8          	vmovd  xmm1,eax
  69:	c5 fa 59 c1          	vmulss xmm0,xmm0,xmm1
  6d:	c4 e2 71 ad 05 00 00 	vfnmadd213ss xmm0,xmm1,DWORD PTR [rip+0x0]        # 76 <Q_rsqrt+0x36>
  74:	00 00 
  76:	c5 f2 59 c0          	vmulss xmm0,xmm1,xmm0
  7a:	c3                   	ret    
```

## Output

```
2022-02-19T17:52:13+00:00
Running ./build/bench
Run on (8 X 4400 MHz CPU s)
CPU Caches:
  L1 Data 32 KiB (x4)
  L1 Instruction 32 KiB (x4)
  L2 Unified 256 KiB (x4)
  L3 Unified 6144 KiB (x1)
Load Average: 0.67, 1.23, 0.79
--------------------------------------------------------------------
Benchmark                          Time             CPU   Iterations
--------------------------------------------------------------------
BM_sqrt/normal_rsqrt_test       1.38 ns         1.38 ns    495658776
BM_sqrt/quake_rsqrt_test        7.29 ns         7.29 ns     96048657
```
