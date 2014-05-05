➜  DeepLearningModel git:(master) ✗ THEANO_FLAGS=profile=True,profile_memory=True python theano_random.py
/Library/Python/2.7/site-packages/theano/gof/vm.py:675: UserWarning: CVM does not support memory profile, using Stack VM.
  'CVM does not support memory profile, using Stack VM.')

[[ 0.75718064  0.1130526 ]
 [ 0.00607781  0.8721389 ]]
[[ 0.42742609  1.74049825]
 [-0.02169041  1.48401086]]
[[-0.54714071  0.64029667]
 [ 0.33442583 -1.92953511]] [[-0.01883439 -2.32164332]
 [-2.24382355  0.42728803]]
[[ 0.4927417   0.35892908]
 [ 0.33555008  0.68432515]]
 
Function profiling
==================
  Message: None
  Time in 2 calls to Function.__call__: 5.679131e-04s
  Time in Function.fn.__call__: 5.099773e-04s (89.798%)
  Time in thunks: 1.511574e-04s (26.616%)
  Total compile time: 7.542162e-01s
    Theano Optimizer time: 5.663140e-01s
       Theano validate time: 3.607273e-04s
    Theano Linker time (includes C, CUDA code generation/compiling): 2.845049e-03s

Class
---
<% time> <sum %> <apply time> <time per call> <type> <#call> <#apply> <Class name>
  100.0%   100.0%       0.000s       7.56e-05s     Py       2        1   <class 'theano.tensor.raw_random.RandomFunction'>
   ... (remaining 0 Classes account for   0.00%(0.00s) of the runtime)

Ops
---
<% time> <sum %> <apply time> <time per call> <type> <#call> <#apply> <Op name>
  100.0%   100.0%       0.000s       7.56e-05s     Py       2        1   RandomFunction{uniform}
   ... (remaining 0 Ops account for   0.00%(0.00s) of the runtime)

Apply
------
<% time> <sum %> <apply time> <time per call> <#call> <id> <Mflops> <Gflops/s> <Apply name>
  100.0%   100.0%       0.000s       7.56e-05s      2     0                     RandomFunction{uniform}(<RandomStateType>, TensorConstant{(2,
    input 0: dtype=no dtype, shape=None, strides=input no strides
    input 1: dtype=int32, shape=(2,), strides=c
    input 2: dtype=float32, shape=(), strides=c
    input 3: dtype=float32, shape=(), strides=c
    output 0: dtype=no dtype, shape=None, strides=input no strides
    output 1: dtype=float64, shape=(2, 2), strides=c
   ... (remaining 0 Apply instances account for 0.00%(0.00s) of the runtime)

Memory Profile
(Sparse variables are ignored)
---
    Max if linker=cvm (default): unknown
    Max if no gc (allow_gc=False): 0KB
    Max if linker=c|py: 0KB
    Memory saved if gc is enabled (linker=c|py): 0KB

    <Sum apply outputs (bytes)> <Apply outputs shape> <created/inplace/view> <Apply node>

          2559B  [None, (2, 2)] i c RandomFunction{uniform}(<RandomStateType>, TensorConstant{(2,) of 2}, TensorConstant{0.0}, TensorConstant{1.0})
   ... (remaining 0 Apply account for    0B/2559B ((0.00%)) of the Apply with dense outputs sizes)

    <created/inplace/view> is taken from the Op's declaration.
    Apply nodes marked 'inplace' or 'view' may actually allocate memory, this is not reported here. If you use DebugMode, warnings will be emitted in those cases.

Function profiling
==================
  Message: None
  Time in 1 calls to Function.__call__: 1.449585e-04s
  Time in Function.fn.__call__: 1.230240e-04s (84.868%)
  Time in thunks: 6.914139e-05s (47.697%)
  Total compile time: 1.873493e-02s
    Theano Optimizer time: 1.641917e-02s
       Theano validate time: 2.782345e-04s
    Theano Linker time (includes C, CUDA code generation/compiling): 1.162052e-03s

Class
---
<% time> <sum %> <apply time> <time per call> <type> <#call> <#apply> <Class name>
  100.0%   100.0%       0.000s       6.91e-05s     Py       1        1   <class 'theano.tensor.raw_random.RandomFunction'>
   ... (remaining 0 Classes account for   0.00%(0.00s) of the runtime)

Ops
---
<% time> <sum %> <apply time> <time per call> <type> <#call> <#apply> <Op name>
  100.0%   100.0%       0.000s       6.91e-05s     Py       1        1   RandomFunction{normal}
   ... (remaining 0 Ops account for   0.00%(0.00s) of the runtime)

Apply
------
<% time> <sum %> <apply time> <time per call> <#call> <id> <Mflops> <Gflops/s> <Apply name>
  100.0%   100.0%       0.000s       6.91e-05s      1     0                     RandomFunction{normal}(<RandomStateType>, TensorConstant{(2,)
    input 0: dtype=no dtype, shape=None, strides=input no strides
    input 1: dtype=int32, shape=(2,), strides=c
    input 2: dtype=float32, shape=(), strides=c
    input 3: dtype=float32, shape=(), strides=c
    output 0: dtype=no dtype, shape=None, strides=input no strides
    output 1: dtype=float64, shape=(2, 2), strides=c
   ... (remaining 0 Apply instances account for 0.00%(0.00s) of the runtime)

Memory Profile
(Sparse variables are ignored)
---
    Max if linker=cvm (default): unknown
    Max if no gc (allow_gc=False): 0KB
    Max if linker=c|py: 0KB
    Memory saved if gc is enabled (linker=c|py): 0KB

    <Sum apply outputs (bytes)> <Apply outputs shape> <created/inplace/view> <Apply node>

          2559B  [None, (2, 2)] i c RandomFunction{normal}(<RandomStateType>, TensorConstant{(2,) of 2}, TensorConstant{0.0}, TensorConstant{1.0})
   ... (remaining 0 Apply account for    0B/2559B ((0.00%)) of the Apply with dense outputs sizes)

    <created/inplace/view> is taken from the Op's declaration.
    Apply nodes marked 'inplace' or 'view' may actually allocate memory, this is not reported here. If you use DebugMode, warnings will be emitted in those cases.

Function profiling
==================
  Message: None
  Time in 2 calls to Function.__call__: 2.570152e-04s
  Time in Function.fn.__call__: 2.148151e-04s (83.581%)
  Time in thunks: 1.029968e-04s (40.074%)
  Total compile time: 1.955605e-02s
    Theano Optimizer time: 1.674390e-02s
       Theano validate time: 3.094673e-04s
    Theano Linker time (includes C, CUDA code generation/compiling): 1.614809e-03s

Class
---
<% time> <sum %> <apply time> <time per call> <type> <#call> <#apply> <Class name>
  100.0%   100.0%       0.000s       5.15e-05s     Py       2        1   <class 'theano.tensor.raw_random.RandomFunction'>
   ... (remaining 0 Classes account for   0.00%(0.00s) of the runtime)

Ops
---
<% time> <sum %> <apply time> <time per call> <type> <#call> <#apply> <Op name>
  100.0%   100.0%       0.000s       5.15e-05s     Py       2        1   RandomFunction{normal}
   ... (remaining 0 Ops account for   0.00%(0.00s) of the runtime)

Apply
------
<% time> <sum %> <apply time> <time per call> <#call> <id> <Mflops> <Gflops/s> <Apply name>
  100.0%   100.0%       0.000s       5.15e-05s      2     0                     RandomFunction{normal}(<RandomStateType>, TensorConstant{(2,)
    input 0: dtype=no dtype, shape=None, strides=input no strides
    input 1: dtype=int32, shape=(2,), strides=c
    input 2: dtype=float32, shape=(), strides=c
    input 3: dtype=float32, shape=(), strides=c
    output 0: dtype=no dtype, shape=None, strides=input no strides
    output 1: dtype=float64, shape=(2, 2), strides=c
   ... (remaining 0 Apply instances account for 0.00%(0.00s) of the runtime)

Memory Profile
(Sparse variables are ignored)
---
    Max if linker=cvm (default): unknown
    Max if no gc (allow_gc=False): 0KB
    Max if linker=c|py: 0KB
    Memory saved if gc is enabled (linker=c|py): 0KB

    <Sum apply outputs (bytes)> <Apply outputs shape> <created/inplace/view> <Apply node>

          2559B  [None, (2, 2)] i c RandomFunction{normal}(<RandomStateType>, TensorConstant{(2,) of 2}, TensorConstant{0.0}, TensorConstant{1.0})
   ... (remaining 0 Apply account for    0B/2559B ((0.00%)) of the Apply with dense outputs sizes)

    <created/inplace/view> is taken from the Op's declaration.
    Apply nodes marked 'inplace' or 'view' may actually allocate memory, this is not reported here. If you use DebugMode, warnings will be emitted in those cases.

Function profiling
==================
  Message: Sum of all printed profiles at exit excluding Scan op profile.
  Time in 5 calls to Function.__call__: 9.698868e-04s
  Time in Function.fn.__call__: 8.478165e-04s (87.414%)
  Time in thunks: 3.232956e-04s (33.333%)
  Total compile time: 7.925072e-01s
    Theano Optimizer time: 5.994771e-01s
       Theano validate time: 9.484291e-04s
    Theano Linker time (includes C, CUDA code generation/compiling): 5.621910e-03s

Class
---
<% time> <sum %> <apply time> <time per call> <type> <#call> <#apply> <Class name>
  100.0%   100.0%       0.000s       6.47e-05s     Py       5        3   <class 'theano.tensor.raw_random.RandomFunction'>
   ... (remaining 0 Classes account for   0.00%(0.00s) of the runtime)

Ops
---
<% time> <sum %> <apply time> <time per call> <type> <#call> <#apply> <Op name>
  53.2%    53.2%       0.000s       5.74e-05s     Py       3        2   RandomFunction{normal}
  46.8%   100.0%       0.000s       7.56e-05s     Py       2        1   RandomFunction{uniform}
   ... (remaining 0 Ops account for   0.00%(0.00s) of the runtime)

Apply
------
<% time> <sum %> <apply time> <time per call> <#call> <id> <Mflops> <Gflops/s> <Apply name>
  46.8%    46.8%       0.000s       7.56e-05s      2     0                     RandomFunction{uniform}(<RandomStateType>, TensorConstant{(2,
    input 0: dtype=no dtype, shape=None, strides=input no strides
    input 1: dtype=int32, shape=(2,), strides=c
    input 2: dtype=float32, shape=(), strides=c
    input 3: dtype=float32, shape=(), strides=c
    output 0: dtype=no dtype, shape=None, strides=input no strides
    output 1: dtype=float64, shape=(2, 2), strides=c
  31.9%    78.6%       0.000s       5.15e-05s      2     0                     RandomFunction{normal}(<RandomStateType>, TensorConstant{(2,)
    input 0: dtype=no dtype, shape=None, strides=input no strides
    input 1: dtype=int32, shape=(2,), strides=c
    input 2: dtype=float32, shape=(), strides=c
    input 3: dtype=float32, shape=(), strides=c
    output 0: dtype=no dtype, shape=None, strides=input no strides
    output 1: dtype=float64, shape=(2, 2), strides=c
  21.4%   100.0%       0.000s       6.91e-05s      1     0                     RandomFunction{normal}(<RandomStateType>, TensorConstant{(2,)
    input 0: dtype=no dtype, shape=None, strides=input no strides
    input 1: dtype=int32, shape=(2,), strides=c
    input 2: dtype=float32, shape=(), strides=c
    input 3: dtype=float32, shape=(), strides=c
    output 0: dtype=no dtype, shape=None, strides=input no strides
    output 1: dtype=float64, shape=(2, 2), strides=c
   ... (remaining 0 Apply instances account for 0.00%(0.00s) of the runtime)

Memory Profile (the max between all functions in that profile)
(Sparse variables are ignored)
---
    Max if linker=cvm (default): unknown
    Max if no gc (allow_gc=False): 0KB
    Max if linker=c|py: 0KB
    Memory saved if gc is enabled (linker=c|py): 0KB

    This list is based on all functions in the profile
    <Sum apply outputs (bytes)> <Apply outputs shape> <created/inplace/view> <Apply node>

          2559B  [None, (2, 2)] i c RandomFunction{uniform}(<RandomStateType>, TensorConstant{(2,) of 2}, TensorConstant{0.0}, TensorConstant{1.0})
          2559B  [None, (2, 2)] i c RandomFunction{normal}(<RandomStateType>, TensorConstant{(2,) of 2}, TensorConstant{0.0}, TensorConstant{1.0})
          2559B  [None, (2, 2)] i c RandomFunction{normal}(<RandomStateType>, TensorConstant{(2,) of 2}, TensorConstant{0.0}, TensorConstant{1.0})
   ... (remaining 0 Apply account for    0B/7677B ((0.00%)) of the Apply with dense outputs sizes)

    <created/inplace/view> is taken from the Op's declaration.
    Apply nodes marked 'inplace' or 'view' may actually allocate memory, this is not reported here. If you use DebugMode, warnings will be emitted in those cases.
