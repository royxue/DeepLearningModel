#coding: utf-8
#author: Roy
#reference: Theano:
#			Cousera Machine Learning by Andrew Ng

import numpy as np
import theano
import theano.tensor as T 


class Logistic_Regression(object):

	def __init__(self, input):
		self.data = np.loadtxt(input, delimiter=',')
		self.x = self.data[:, (0, 1)]
		self.y = self.data[:, 2]
		print self.x[1]


log_reg = Logistic_Regression("ex2data1.txt")
		