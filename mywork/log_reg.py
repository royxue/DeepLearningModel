
#coding: utf-8
#author: Roy
#reference: Cousera Machine Learning by Andrew Ng

import numpy as np
# import theano
# import theano.tensor as T 
import matplotlib.pyplot as plt


class Logistic_Regression(object):

	def __init__(self, input):
		self.data = np.loadtxt(input, delimiter=',')
		self.x = self.data[:, (0, 1)]
		self.x = np.concatenate((np.ones((100, 1)), self.x), axis=1)
		self.y = self.data[:, 2].reshape((100, 1))
		self.theta = np.zeros((3, 1))
		self.m = 100
		self.hx = self.sigmoid(np.dot(self.x, self.theta))


	def sigmoid(self, para):
		h = np.zeros(para.shape)
		h = 1.0 / (1 + np.exp(-para))
		return h

	def cost_function(self):
		log1 = np.log(self.hx)
		self.hxx = 1.0 - self.hx
		log2 = np.log(self.hxx)
		J = (-1.0) / self.m * (np.dot(self.y.T , log1) + np.dot((1 - self.y).T , log2))
		return J
		

	def gradient_descent(self):
		a = 0.01
		for i in range(100):
			self.hx = self.sigmoid(np.dot(self.x, self.theta))
			# self.theta[0] = self.theta[0] - a * sum(self.hx - self.y)
			# self.theta[1] = self.theta[1] - a * sum((self.hx - self.y) * self.x[:, 1].reshape((100, 1)))
			# self.theta[2] = self.theta[2] - a * sum((self.hx - self.y) * self.x[:, 2].reshape((100, 1)))
			self.theta -= a * np.dot(self.x.T , (self.hx - self.y))


	def show(self):
		red_orb_x = []
		red_orb_y = []
		blue_orb_x = []
		blue_orb_y = []
		for orb in self.data:
			if orb[2] == 0:
				red_orb_x.append(orb[0])
				red_orb_y.append(orb[1])
			else:
				blue_orb_x.append(orb[0])
				blue_orb_y.append(orb[1])
		
		plt.plot(red_orb_x, red_orb_y, "ro")
		plt.plot(blue_orb_x, blue_orb_y, "bo")
		#plt.plot(self.x[:, 1], np.dot(self.x, self.theta), "g-")
		plt.show()

	def run(self):
		print "Cost Now is " + str(self.cost_function())
		self.gradient_descent()
		print "After Cost is " + str(self.cost_function())
		self.show()


log_reg = Logistic_Regression("ex2data1.txt")
log_reg.run()
