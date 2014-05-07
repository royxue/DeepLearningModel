

import numpy
import fileinput
import cPickle

data = numpy.loadtxt("ex1data1.txt", delimiter=',')
#data = cPickle.load(file)
print data.shape
x = data[:, 0]
print data.shape
print x

class monkey(object):
	def __init__(self, a):
		self.a = a
		b = self.a - 5

	def sss(self):
		global b
		c = self.a -5
		# d = b - 5
		return c
a = monkey(12)
print a.sss()