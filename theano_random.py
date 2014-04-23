import theano
import theano.tensor as T 

from theano.tensor.shared_randomstreams import RandomStreams

srng = RandomStreams(seed=1234)
rn_u = srng.uniform((2, 2))
rn_n = srng.normal((2, 2))
print rn_u.eval()
print rn_n.eval()
# however times run this, the value of array didn't change

# if wanna change that use function'

f = theano.function([], rn_n)
val0 = f()
val1 = f()

print val0,val1

# in single function excution random variables will be drawn at most once

# change seed in temporary one or all variables
# 1. change one
rng_val = rn_u.rng.get_value(borrow = True)
rng_val.seed(6760)
rn_u.rng.set_value(rng_val, borrow=True)
print rn_u.eval()
