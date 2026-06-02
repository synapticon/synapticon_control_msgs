# Commands for one or more Synapticon SOMANET drives in impedance mode.
#
# All arrays are parallel: index i of every array refers to the joint named
# name[i]. The arrays must all have the same length.
#
# The effective control behaviour is implied by the values, not by an explicit
# mode field: with zero stiffness/damping (and zero position/velocity) the
# command reduces to raw torque control via torque_feedforward; any nonzero
# stiffness/damping makes it impedance control.
#
# Config-like quantities (e.g. torque_gain, max_joint_torque) are intentionally
# NOT in this per-cycle message — they belong in configuration read at setup.

std_msgs/Header header

string[]  name                # Joint/motor each column targets
float64[] position            # Target position [rad]
float64[] velocity            # Target velocity [rad/s]
float64[] torque_feedforward  # Feedforward torque [Nm]
float64[] stiffness           # Impedance stiffness [Nm/rad]
float64[] damping             # Impedance damping [N·m·s/rad]
