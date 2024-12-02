import math
import time
from math import pi, acos, atan2

import serial
import matplotlib.pyplot as plt
import matplotlib

matplotlib.use('Qt5Agg')

def send_command(s):
    s.write(input("command: ").encode())

def serial_to_x_y(s):
    res = s.read()
    binary = format(ord(res.decode()), "08b")

    x, y = int(binary[:4], 2), int(binary[4:], 2)
    print(f"{binary} -> {binary[:4]}_{binary[4:]} -> ({x}, {y})")
    return x, y

def plot_arm(l1, l2, x, y):
    d2 = x ** 2 + y ** 2
    d = d2 ** 0.5

    base_angle = atan2(y, x)

    # C:= cos of the first angle in a triangle defined by L1 and L2
    # the formula comes from the Law of Cosines
    C = (l1 ** 2 + d2 - l2 ** 2) / (2 * l1 * d)
    c = acos(C)

    # Check if the target is reachable.
    # If C > 1, it means the target is outside the workspace of the robot
    # If C < -1, it means the target is inside the workspace, but not reachable
    if -1 <= C <= 1:
        # B:= cos of the second angle
        B = (l1 ** 2 + l2 ** 2 - d2) / (2 * l1 * l2)
        b = acos(B)

        a1 = base_angle + c
        a2 = a1 + (b - pi)

        x_1 = math.cos(a1) * l1
        y_1 = math.sin(a1) * l1

        x_2 = ( math.cos(a2) * l1 ) + x_1
        y_2 = ( math.sin(a2) * l2 ) + y_1

        plot_x = [0, x_1, x_2]
        plot_y = [0, y_1, y_2]


        plt.ion()
        plt.clf()
        plt.plot(plot_x, plot_y)
        plt.scatter(x, y)
        plt.axis((-(l1+l2) * 0.5, l1+l2, 0, l1+l2))
        mngr = plt.get_current_fig_manager()
        mngr.window.setGeometry(800, 100, 500, 500)
        plt.draw()
        plt.pause(1)

while ( True ):
    s = serial.Serial('COM4')
    try:
        keyboard = True

        x, y = serial_to_x_y(s)
        if keyboard:
            send_command(s)
        else:
            time.sleep(0.25)
        plot_arm(3, 3, x, y)
    except Exception as e:
        continue
    finally:
        s.close()




