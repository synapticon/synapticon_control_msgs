# Decoded status of one drive, as the drive controller sees it. Part of DriveStatusArray.

# CiA 402 device state, decoded from the statusword.
uint8 STATE_START=0
uint8 STATE_NOT_READY_TO_SWITCH_ON=1
uint8 STATE_SWITCH_ON_DISABLED=2
uint8 STATE_READY_TO_SWITCH_ON=3
uint8 STATE_SWITCHED_ON=4
uint8 STATE_OPERATION_ENABLED=5
uint8 STATE_QUICK_STOP_ACTIVE=6
uint8 STATE_FAULT_REACTION_ACTIVE=7
uint8 STATE_FAULT=8
uint8 STATE_UNKNOWN=9

# Joint (dof) name.
string name

# The slave is on the bus and in EtherCAT state OP. When false, the drive fields below are the
# last values received and may be stale.
bool online

# EtherCAT application layer state of the slave (1 INIT, 2 PREOP, 4 SAFEOP, 8 OP).
uint8 al_state

# One of the STATE_ constants above, and its name.
uint8 device_state
string device_state_name

# Modes of operation display (0x6061): what the drive is running.
int8 mode_of_operation

# Error code (0x603F). 0 when there is none.
uint16 error_code

# Error report description (0x203F:1), as the drive reports it.
string error_report

# The drive is under a latched drive fault reaction.
bool latched
