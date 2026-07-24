cmake_minimum_required(VERSION 3.8)
project(synapticon_control_msgs)

find_package(ament_cmake REQUIRED)
find_package(rosidl_default_generators REQUIRED)
find_package(std_msgs REQUIRED)

rosidl_generate_interfaces(${PROJECT_NAME}
  "msg/MotorCommand.msg"
  "msg/ErrorMsg.msg"
  "msg/MotorErrors.msg"
  "srv/ResetDriveFault.srv"
  "srv/EnableDrive.srv"
  "srv/DisableDrive.srv"
  DEPENDENCIES std_msgs
)

ament_export_dependencies(rosidl_default_runtime)

ament_package()
