# synapticon_control_msgs

ROS 2 messages and services for controlling Synapticon SOMANET drives through ros2_control.
They are the interface of the controllers in [synapticon_ros2_control](https://github.com/synapticon/synapticon_ros2_control).

## Messages

| Message | Content |
|---|---|
| `MotorCommand` | Impedance setpoints per joint: position, velocity, feedforward torque, stiffness and damping |
| `DriveStatus` | Decoded state of one drive: bus state, CiA 402 device state, mode of operation, error code |
| `DriveStatusArray` | `DriveStatus` of every drive a drive controller manages |
| `FaultReactionEvent` | The drive fault reaction fired or was cleared, with the joints and conditions involved |
| `MotorErrors`, `ErrorMsg` | Error reports per motor |

## Services

| Service | Request |
|---|---|
| `SetDriveAction` | A CiA 402 drive action by name (enable, quick stop, disable, reset fault and more) on selected drives |
| `EnableDrive`, `DisableDrive` | Walk selected drives to Operation Enabled or to Switch On Disabled |
| `ResetDriveFault` | Clear the fault of one drive |
| `ClearFaultReaction` | End the latched fault reaction on selected joints |
| `InjectFaultEvent` | Hand a named event, for example an emergency stop, to the drive fault policy |
