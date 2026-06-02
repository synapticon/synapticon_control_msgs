# Commands for one or more Synapticon SOMANET drives in impedance mode.
#
# All arrays are parallel: index i of every array refers to the joint named
# name[i]. The arrays must all have the same length.

int8 IMPEDANCE_MODE=-6
int8 JOINT_TORQUE_MODE=-5
int8 SYSTEM_IDENTIFICATION_MODE=-4
int8 OPEN_LOOP_FIELD_MODE=-3
int8 DIAGNOSTICS_MODE=-2
int8 COGGING_COMPENSATION_RECORDING_MODE=-1
int8 PROFILE_POSITION_MODE=1
int8 PROFILE_VELOCITY_MODE=3
int8 TORQUE_PROFILE_MODE=4
int8 HOMING_MODE=6
int8 CYCLIC_SYNC_POSITION_MODE=8
int8 CYCLIC_SYNC_VELOCITY_MODE=9
int8 CYCLIC_SYNC_TORQUE_MODE=10


std_msgs/Header header

int8 mode
string[]  name                # Joint/motor each column targets
float64[] position            # Target position [rad]
float64[] velocity            # Target velocity [rad/s]
float64[] torque_feedforward  # Feedforward torque [Nm]
float64[] stiffness           # Impedance stiffness [Nm/rad]
float64[] damping             # Impedance damping [N·m·s/rad]
