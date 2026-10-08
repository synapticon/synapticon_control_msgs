# A change of the drive fault reaction's state: it fired, or it was cleared. Published with
# transient local durability, so a subscriber that starts late receives the latest event.

# What a joint did to trigger the reaction.
uint8 CONDITION_FAULT=1             # The drive entered Fault or Fault Reaction Active.
uint8 CONDITION_UNREACHABLE=2       # The drive left the bus or EtherCAT state OP.
uint8 CONDITION_FOLLOWING_ERROR=3   # The drive reported a following error without faulting.

std_msgs/Header header

# True: the reaction fired and holds. False: it was cleared.
bool latched

# The joints that entered a condition in this event, with the condition (a CONDITION_ constant and
# its name), the drive's error code (0x603F, 0 if none) and its error report description (0x203F:1)
# at the time. Parallel arrays. Empty on a clear.
string[] triggered_by
uint8[] condition
string[] condition_name
uint16[] error_code
string[] error_report

# The drive action requested, for example "quick_stop", and the joints it was requested for.
# Empty on a clear.
string action
string[] acted_on

# The joints latched after this event.
string[] latched_joints
