# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/argmm/TTS_and_brandname/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/argmm/TTS_and_brandname/catkin_ws/build

# Utility rule file for text_msgs_generate_messages_nodejs.

# Include the progress variables for this target.
include brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs.dir/progress.make

brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_msg.js
brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_array.js
brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/bb_box.js
brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/object_pose.js
brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/int_arr.js
brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_recognize_srv.js
brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/predict_switch.js
brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/bn_pose_srv.js
brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/object_only.js
brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/pose_state.js
brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/manipulation.js
brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/int32.js
brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_detection_srv.js


/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_msg.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_msg.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_msg.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_msg.js: /opt/ros/melodic/share/geometry_msgs/msg/Pose.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_msg.js: /opt/ros/melodic/share/geometry_msgs/msg/Quaternion.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_msg.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_msg.js: /opt/ros/melodic/share/geometry_msgs/msg/Point.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/argmm/TTS_and_brandname/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating Javascript code from text_msgs/text_detection_msg.msg"
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && ../../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg -Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p text_msgs -o /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg

/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_array.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_array.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_array.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_array.js: /opt/ros/melodic/share/sensor_msgs/msg/Image.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_array.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_array.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_array.js: /opt/ros/melodic/share/geometry_msgs/msg/Pose.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_array.js: /opt/ros/melodic/share/std_msgs/msg/Header.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_array.js: /opt/ros/melodic/share/geometry_msgs/msg/Quaternion.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_array.js: /opt/ros/melodic/share/geometry_msgs/msg/Point.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/argmm/TTS_and_brandname/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating Javascript code from text_msgs/text_detection_array.msg"
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && ../../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg -Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p text_msgs -o /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg

/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/bb_box.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/bb_box.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/argmm/TTS_and_brandname/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating Javascript code from text_msgs/bb_box.msg"
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && ../../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg -Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p text_msgs -o /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg

/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/object_pose.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/object_pose.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/object_pose.js: /opt/ros/melodic/share/geometry_msgs/msg/Pose.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/object_pose.js: /opt/ros/melodic/share/geometry_msgs/msg/Quaternion.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/object_pose.js: /opt/ros/melodic/share/geometry_msgs/msg/Point.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/argmm/TTS_and_brandname/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Generating Javascript code from text_msgs/object_pose.msg"
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && ../../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg -Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p text_msgs -o /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg

/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/int_arr.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/int_arr.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/argmm/TTS_and_brandname/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Generating Javascript code from text_msgs/int_arr.msg"
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && ../../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg -Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p text_msgs -o /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg

/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_recognize_srv.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_recognize_srv.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_recognize_srv.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_recognize_srv.js: /opt/ros/melodic/share/sensor_msgs/msg/Image.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_recognize_srv.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_recognize_srv.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_recognize_srv.js: /opt/ros/melodic/share/geometry_msgs/msg/Pose.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_recognize_srv.js: /opt/ros/melodic/share/std_msgs/msg/Header.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_recognize_srv.js: /opt/ros/melodic/share/geometry_msgs/msg/Quaternion.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_recognize_srv.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_recognize_srv.js: /opt/ros/melodic/share/geometry_msgs/msg/Point.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/argmm/TTS_and_brandname/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Generating Javascript code from text_msgs/text_recognize_srv.srv"
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && ../../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv -Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p text_msgs -o /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv

/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/predict_switch.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/predict_switch.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/argmm/TTS_and_brandname/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Generating Javascript code from text_msgs/predict_switch.srv"
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && ../../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv -Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p text_msgs -o /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv

/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/bn_pose_srv.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/bn_pose_srv.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/bn_pose_srv.js: /opt/ros/melodic/share/sensor_msgs/msg/Image.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/bn_pose_srv.js: /opt/ros/melodic/share/geometry_msgs/msg/Pose.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/bn_pose_srv.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/bn_pose_srv.js: /opt/ros/melodic/share/std_msgs/msg/Header.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/bn_pose_srv.js: /opt/ros/melodic/share/geometry_msgs/msg/Quaternion.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/bn_pose_srv.js: /opt/ros/melodic/share/geometry_msgs/msg/Point.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/argmm/TTS_and_brandname/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Generating Javascript code from text_msgs/bn_pose_srv.srv"
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && ../../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv -Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p text_msgs -o /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv

/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/object_only.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/object_only.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/object_only.js: /opt/ros/melodic/share/sensor_msgs/msg/Image.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/object_only.js: /opt/ros/melodic/share/geometry_msgs/msg/Pose.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/object_only.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/object_only.js: /opt/ros/melodic/share/std_msgs/msg/Header.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/object_only.js: /opt/ros/melodic/share/geometry_msgs/msg/Quaternion.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/object_only.js: /opt/ros/melodic/share/geometry_msgs/msg/Point.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/argmm/TTS_and_brandname/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Generating Javascript code from text_msgs/object_only.srv"
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && ../../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv -Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p text_msgs -o /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv

/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/pose_state.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/pose_state.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/pose_state.js: /opt/ros/melodic/share/sensor_msgs/msg/Image.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/pose_state.js: /opt/ros/melodic/share/geometry_msgs/msg/Pose.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/pose_state.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/pose_state.js: /opt/ros/melodic/share/std_msgs/msg/Header.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/pose_state.js: /opt/ros/melodic/share/geometry_msgs/msg/Quaternion.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/pose_state.js: /opt/ros/melodic/share/geometry_msgs/msg/Point.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/argmm/TTS_and_brandname/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Generating Javascript code from text_msgs/pose_state.srv"
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && ../../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv -Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p text_msgs -o /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv

/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/manipulation.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/manipulation.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/manipulation.js: /opt/ros/melodic/share/geometry_msgs/msg/Pose.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/manipulation.js: /opt/ros/melodic/share/geometry_msgs/msg/Quaternion.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/manipulation.js: /opt/ros/melodic/share/geometry_msgs/msg/Point.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/argmm/TTS_and_brandname/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Generating Javascript code from text_msgs/manipulation.srv"
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && ../../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv -Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p text_msgs -o /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv

/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/int32.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/int32.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/argmm/TTS_and_brandname/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Generating Javascript code from text_msgs/int32.srv"
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && ../../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv -Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p text_msgs -o /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv

/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_detection_srv.js: /opt/ros/melodic/lib/gennodejs/gen_nodejs.py
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_detection_srv.js: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_detection_srv.js: /opt/ros/melodic/share/sensor_msgs/msg/Image.msg
/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_detection_srv.js: /opt/ros/melodic/share/std_msgs/msg/Header.msg
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/argmm/TTS_and_brandname/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Generating Javascript code from text_msgs/text_detection_srv.srv"
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && ../../../catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/melodic/share/gennodejs/cmake/../../../lib/gennodejs/gen_nodejs.py /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv -Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg -Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg -Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg -Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg -p text_msgs -o /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv

text_msgs_generate_messages_nodejs: brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs
text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_msg.js
text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/text_detection_array.js
text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/bb_box.js
text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/object_pose.js
text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/msg/int_arr.js
text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_recognize_srv.js
text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/predict_switch.js
text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/bn_pose_srv.js
text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/object_only.js
text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/pose_state.js
text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/manipulation.js
text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/int32.js
text_msgs_generate_messages_nodejs: /home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs/srv/text_detection_srv.js
text_msgs_generate_messages_nodejs: brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs.dir/build.make

.PHONY : text_msgs_generate_messages_nodejs

# Rule to build all files generated by this target.
brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs.dir/build: text_msgs_generate_messages_nodejs

.PHONY : brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs.dir/build

brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs.dir/clean:
	cd /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs && $(CMAKE_COMMAND) -P CMakeFiles/text_msgs_generate_messages_nodejs.dir/cmake_clean.cmake
.PHONY : brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs.dir/clean

brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs.dir/depend:
	cd /home/argmm/TTS_and_brandname/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/argmm/TTS_and_brandname/catkin_ws/src /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs /home/argmm/TTS_and_brandname/catkin_ws/build /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs /home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : brand_name/system_msgs/text_msgs/CMakeFiles/text_msgs_generate_messages_nodejs.dir/depend

