import theano
import theano.tensor as T 

x = T.dscalar("x")
y = T.dscalar("y")

z = x + y
w = x - y
f = theano.function([x, y], z, name="Add")

f2 = theano.function([x, y], z, name='Subtract')

print f(2, 3)
print f2(7, 6)

