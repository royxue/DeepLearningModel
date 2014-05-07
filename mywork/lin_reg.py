#author: Roy Xue
#reference: Cousera Machine Learning by Andrew Ng

import numpy as np
import matplotlib.pyplot as plt

class Linear_Regression(object):
	def __init__(self,input):
		self.data = np.loadtxt(input, delimiter=',')
		self.theta = np.zeros((2,1))
		self.m = 97
		self.x = self.data[:, 0].reshape(97, 1)
		self.x1 = np.concatenate((np.ones((97, 1)), self.x), axis=1)
		self.y = self.data[:, 1].reshape(97, 1)

	def show_data(self):
		plt.plot(self.x, self.y,'o', self.x, self.H + self.y, 'r')
		plt.show()
		
	def cost_function(self):
		self.H = np.dot(self.x1, self.theta) - self.y
		J = sum(pow(self.H, 2)) / (2. * self.m)
		return J

	def gradient_descent(self):
		iteration = 1500
		alpha = 0.01
		for i in range(0, iteration):
			self.H = self.H = np.dot(self.x1, self.theta) - self.y
			self.theta[0] = self.theta[0] - (alpha / self.m) * sum(self.H)
			self.theta[1] = self.theta[1] - (alpha / self.m) * sum(self.H * self.x)			
		return self.theta		

	def run(self):
		print "Initial Cost is" + str(self.cost_function())
		print "The best theta after 1500 iterations" + str(self.gradient_descent())
		print "The Cost now is" + str(self.cost_function())
		self.show_data()

line = Linear_Regression(input='ex1data1.txt')
line.run()