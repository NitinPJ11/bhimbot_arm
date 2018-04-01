# Delete the target object if already exists
rosservice call /gazebo/delete_model "model_name: 'target_object'"

# Spawn the target object
roslaunch bhimbot_arm spawn_target.launch

# Action to pick up an object
rostopic pub -1 /bhimbot/shoulder_pan_joint_position_controller/command std_msgs/Float64 "data: 1.5"
rostopic pub -1 /bhimbot/elbow_pitch_joint_position_controller/command std_msgs/Float64 "data: -0.4"
rostopic pub -1 /bhimbot/wrist_pitch_joint_position_controller/command std_msgs/Float64 "data: 0.5"
rostopic pub -1 /bhimbot/shoulder_pitch_joint_position_controller/command std_msgs/Float64 "data: 1.5"
rostopic pub -1 /bhimbot/elbow_pitch_joint_position_controller/command std_msgs/Float64 "data: -0.1"
rostopic pub -1 /bhimbot/wrist_pitch_joint_position_controller/command std_msgs/Float64 "data: 0.1"
rostopic pub -1 /bhimbot/gripper_left_finger_joint_position_controller/command std_msgs/Float64 "data: 1"

# Action to place the object
rostopic pub -1 /bhimbot/shoulder_pitch_joint_position_controller/command std_msgs/Float64 "data: 1.2"
rostopic pub -1 /bhimbot/shoulder_pan_joint_position_controller/command std_msgs/Float64 "data: -1"
rostopic pub -1 /bhimbot/gripper_left_finger_joint_position_controller/command std_msgs/Float64 "data: 0"

# Action to go back to default pose
rostopic pub -1 /bhimbot/shoulder_pitch_joint_position_controller/command std_msgs/Float64 "data: 0"
rostopic pub -1 /bhimbot/elbow_pitch_joint_position_controller/command std_msgs/Float64 "data: 0"
rostopic pub -1 /bhimbot/wrist_pitch_joint_position_controller/command std_msgs/Float64 "data: 0"
rostopic pub -1 /bhimbot/shoulder_pan_joint_position_controller/command std_msgs/Float64 "data: 0"




