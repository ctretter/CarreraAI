#*******************************************************************
# Author: Michael Bierig
# Created: 2016-11-06
#*******************************************************************
# Description: plot debug/release test of vector and list
#*******************************************************************

import matplotlib.pyplot as plt
import matplotlib.patches as mpatches

# add legend
red_patch = mpatches.Patch(color='red', label='vect: debug')
blue_patch = mpatches.Patch(color='blue', label='list: debug')
green_patch = mpatches.Patch(color='green', label='vect: release')
cyan_patch = mpatches.Patch(color='cyan', label='list: release')
plt.legend(handles=[red_patch, blue_patch, green_patch, cyan_patch])
plt.xlabel('time in microseconds')
plt.ylabel('number of inserts')

# data for X axis
X_data_1 = [10,50,100,500,1000,5000]
X_data_2 = [10,50,100,500,1000,5000,10000,20000,30000,40000,50000]

# data for Y axis
Y_data_1 = [60,518,1639,34777,137056,3393240]
Y_data_2 = [53,527,1764,36620,144711,3596620]
Y_data_3 = [4,8,13,76,204,3340,12612,49860,111651,197877,308582]
Y_data_4 = [0,3,7,89,295,19820,96961,691449,1986050,4284140,7231370]

# plot range for Y and X axis
plot_range = [0, 3600000, 0, 30000]

# Test: debug vector
plt.plot(Y_data_1, X_data_1, 'r')
# Test: debug list
plt.plot(Y_data_2, X_data_1, 'b')

# Test: release vector
plt.plot(Y_data_3, X_data_2, 'g')
# Test: release list
plt.plot(Y_data_4, X_data_2, 'c')

# set plot range and plot data
plt.axis(plot_range)
plt.show()