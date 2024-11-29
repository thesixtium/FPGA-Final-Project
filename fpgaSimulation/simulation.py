import math
import time

import serial
import PyQt6
import matplotlib.pyplot as plt

s = serial.Serial('COM4')
res = s.read()
print(res)
print(int(res))
print(format(res, "08b"))

def plot_arm(l1, l2, a1, a2):
    d_to_r = (math.pi / 180)
    a1 = a1 * d_to_r
    a2 = a2 * d_to_r

    x_1 = math.cos(a1) * l1
    y_1 = math.sin(a1) * l1

    x_2 = ( math.cos(a2) * l1 ) + x_1
    y_2 = ( math.sin(a2) * l2 ) + y_1

    plot_x = [0, x_1, x_2]
    plot_y = [0, y_1, y_2]

    plt.ion()
    plt.clf()
    plt.plot(plot_x, plot_y)
    plt.axis((0, l1+l2, 0, l1+l2))
    plt.pause(0.05)

# for a1 in range(10, 180):
#     plot_arm(1, 0.5, a1, 90)
#     time.sleep(0.05)
# plt.show()



