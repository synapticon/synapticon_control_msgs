# Commands for one or more Synapticon SOMANET drives in impedance mode.
#
# All arrays are parallel: index i of every array refers to the joint named
# name[i]. The arrays must all have the same length.

std_msgs/Header header

string[]  name                # Joint/motor each column targets
float64[] position            # Target position [rad]
float64[] velocity            # Target velocity [rad/s]
float64[] torque_feedforward  # Feedforward torque [Nm]
float64[] stiffness           # Impedance stiffness [Nm/rad]
float64[] damping             # Impedance damping [Nm s/rad]
