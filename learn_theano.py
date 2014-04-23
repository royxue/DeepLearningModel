#coding: utf-8

import numpy
from theano import *
import theano.tensor as T 

x = T.dscalar('x')
y = T.dscalar('y')
z = x + y
f = theano.function([x, y], z)

print f(2, 3)

#set default paragrams
f_d = function([x, Param(y, default=1, name='add')],z)
print f_d(22, add=5)

# In Theano, all symbols must be typed. In particular, 
# T.dscalar is the type we assign to “0-dimensional arrays (scalar) of doubles (d)”. It is a Theano Type.
# dscalar is not a class. Therefore, neither x nor y are actually instances of dscalar.
# They are instances of TensorVariable. x and y are, however, assigned the theano Type dscalar in their type field

from theano import pp
print pp(z)

#matrix calculating
#just let x = T.dmatrix('x')

#basic function -- sigmoid

x = T.dmatrix('x')
s = 1 / (1 + T.exp(-x))
f = function([x], s)
print f([[0, 1], ])

#another tanh 
s2 = (1 + T.tanh(x / 2)) / 2
f2 = function([x], s2)
print f2([[0, 1],])

#calculating more that one thing
a, b = T.dmatrices('a', 'b')
diff = a - b
abs_diff = abs(diff)
f3 = function([a, b], [diff, abs_diff])
print f3([[1, 2], [2, 1]],[[1, 3], [3, 4]])


state = shared(0)
inc = T.iscalar('inc')
accumulator = function([inc], state, updates=[(state, state+inc)])
#It is called a shared variable because its value is shared between many functions. 
#The value can be accessed and modified by the .get_value() and .set_value() methods. 

# param updates: means “whenever this function runs, 
# it will replace the .value of each shared variable with the result of the corresponding expression”

# param:givens is as a mechanism that allows you to replace any part of your formula 
# with a different expression that evaluates to a tensor of same shape and dtype.

 # 