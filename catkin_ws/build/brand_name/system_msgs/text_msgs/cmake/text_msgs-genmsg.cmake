# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "text_msgs: 5 messages, 8 services")

set(MSG_I_FLAGS "-Itext_msgs:/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg;-Igeometry_msgs:/opt/ros/melodic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/melodic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(text_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv" NAME_WE)
add_custom_target(_text_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "text_msgs" "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv" "text_msgs/bb_box:sensor_msgs/Image:text_msgs/int_arr:text_msgs/text_detection_msg:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:text_msgs/text_detection_array:geometry_msgs/Point"
)

get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv" NAME_WE)
add_custom_target(_text_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "text_msgs" "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv" ""
)

get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg" NAME_WE)
add_custom_target(_text_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "text_msgs" "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg" "text_msgs/bb_box:sensor_msgs/Image:text_msgs/int_arr:text_msgs/text_detection_msg:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv" NAME_WE)
add_custom_target(_text_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "text_msgs" "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv" "sensor_msgs/Image:geometry_msgs/Pose:text_msgs/object_pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg" NAME_WE)
add_custom_target(_text_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "text_msgs" "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg" "text_msgs/bb_box:geometry_msgs/Pose:geometry_msgs/Quaternion:text_msgs/int_arr:geometry_msgs/Point"
)

get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv" NAME_WE)
add_custom_target(_text_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "text_msgs" "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv" "sensor_msgs/Image:geometry_msgs/Pose:text_msgs/object_pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv" NAME_WE)
add_custom_target(_text_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "text_msgs" "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg" NAME_WE)
add_custom_target(_text_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "text_msgs" "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg" "geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv" NAME_WE)
add_custom_target(_text_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "text_msgs" "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv" ""
)

get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv" NAME_WE)
add_custom_target(_text_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "text_msgs" "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv" "sensor_msgs/Image:geometry_msgs/Pose:text_msgs/object_pose:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point"
)

get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg" NAME_WE)
add_custom_target(_text_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "text_msgs" "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg" ""
)

get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv" NAME_WE)
add_custom_target(_text_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "text_msgs" "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv" "sensor_msgs/Image:std_msgs/Header"
)

get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg" NAME_WE)
add_custom_target(_text_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "text_msgs" "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
)
_generate_msg_cpp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
)
_generate_msg_cpp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
)
_generate_msg_cpp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
)
_generate_msg_cpp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
)

### Generating Services
_generate_srv_cpp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
)
_generate_srv_cpp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
)
_generate_srv_cpp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
)
_generate_srv_cpp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
)
_generate_srv_cpp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
)
_generate_srv_cpp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
)
_generate_srv_cpp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
)
_generate_srv_cpp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
)

### Generating Module File
_generate_module_cpp(text_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(text_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(text_msgs_generate_messages text_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_cpp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_cpp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_cpp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_cpp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_cpp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_cpp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_cpp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_cpp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_cpp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_cpp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_cpp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_cpp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_cpp _text_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(text_msgs_gencpp)
add_dependencies(text_msgs_gencpp text_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS text_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
)
_generate_msg_eus(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
)
_generate_msg_eus(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
)
_generate_msg_eus(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
)
_generate_msg_eus(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
)

### Generating Services
_generate_srv_eus(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
)
_generate_srv_eus(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
)
_generate_srv_eus(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
)
_generate_srv_eus(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
)
_generate_srv_eus(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
)
_generate_srv_eus(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
)
_generate_srv_eus(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
)
_generate_srv_eus(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
)

### Generating Module File
_generate_module_eus(text_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(text_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(text_msgs_generate_messages text_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_eus _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_eus _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_eus _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_eus _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_eus _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_eus _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_eus _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_eus _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_eus _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_eus _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_eus _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_eus _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_eus _text_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(text_msgs_geneus)
add_dependencies(text_msgs_geneus text_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS text_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
)
_generate_msg_lisp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
)
_generate_msg_lisp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
)
_generate_msg_lisp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
)
_generate_msg_lisp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
)

### Generating Services
_generate_srv_lisp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
)
_generate_srv_lisp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
)
_generate_srv_lisp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
)
_generate_srv_lisp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
)
_generate_srv_lisp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
)
_generate_srv_lisp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
)
_generate_srv_lisp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
)
_generate_srv_lisp(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
)

### Generating Module File
_generate_module_lisp(text_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(text_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(text_msgs_generate_messages text_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_lisp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_lisp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_lisp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_lisp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_lisp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_lisp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_lisp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_lisp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_lisp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_lisp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_lisp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_lisp _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_lisp _text_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(text_msgs_genlisp)
add_dependencies(text_msgs_genlisp text_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS text_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
)
_generate_msg_nodejs(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
)
_generate_msg_nodejs(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
)
_generate_msg_nodejs(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
)
_generate_msg_nodejs(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
)

### Generating Services
_generate_srv_nodejs(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
)
_generate_srv_nodejs(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
)
_generate_srv_nodejs(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
)
_generate_srv_nodejs(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
)
_generate_srv_nodejs(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
)
_generate_srv_nodejs(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
)
_generate_srv_nodejs(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
)
_generate_srv_nodejs(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
)

### Generating Module File
_generate_module_nodejs(text_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(text_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(text_msgs_generate_messages text_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_nodejs _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_nodejs _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_nodejs _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_nodejs _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_nodejs _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_nodejs _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_nodejs _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_nodejs _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_nodejs _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_nodejs _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_nodejs _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_nodejs _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_nodejs _text_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(text_msgs_gennodejs)
add_dependencies(text_msgs_gennodejs text_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS text_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
)
_generate_msg_py(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
)
_generate_msg_py(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
)
_generate_msg_py(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
)
_generate_msg_py(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
)

### Generating Services
_generate_srv_py(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv"
  "${MSG_I_FLAGS}"
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg;/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
)
_generate_srv_py(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
)
_generate_srv_py(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
)
_generate_srv_py(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
)
_generate_srv_py(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
)
_generate_srv_py(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/melodic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
)
_generate_srv_py(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
)
_generate_srv_py(text_msgs
  "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
)

### Generating Module File
_generate_module_py(text_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(text_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(text_msgs_generate_messages text_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_py _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_py _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_py _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_py _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_py _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_py _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_py _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_py _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_py _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_py _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_py _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv" NAME_WE)
add_dependencies(text_msgs_generate_messages_py _text_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg" NAME_WE)
add_dependencies(text_msgs_generate_messages_py _text_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(text_msgs_genpy)
add_dependencies(text_msgs_genpy text_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS text_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/text_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(text_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(text_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(text_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/text_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(text_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(text_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(text_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/text_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(text_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(text_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(text_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/text_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(text_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(text_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(text_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/text_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(text_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(text_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(text_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
