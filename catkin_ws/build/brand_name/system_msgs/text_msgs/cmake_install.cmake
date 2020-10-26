# Install script for directory: /home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/argmm/TTS_and_brandname/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/text_msgs/msg" TYPE FILE FILES
    "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_msg.msg"
    "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/text_detection_array.msg"
    "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/bb_box.msg"
    "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/int_arr.msg"
    "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/msg/object_pose.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/text_msgs/srv" TYPE FILE FILES
    "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/int32.srv"
    "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_recognize_srv.srv"
    "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/text_detection_srv.srv"
    "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/predict_switch.srv"
    "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/pose_state.srv"
    "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/object_only.srv"
    "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/bn_pose_srv.srv"
    "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/srv/manipulation.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/text_msgs/cmake" TYPE FILE FILES "/home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs/catkin_generated/installspace/text_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/argmm/TTS_and_brandname/catkin_ws/devel/include/text_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/argmm/TTS_and_brandname/catkin_ws/devel/share/roseus/ros/text_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/argmm/TTS_and_brandname/catkin_ws/devel/share/common-lisp/ros/text_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/argmm/TTS_and_brandname/catkin_ws/devel/share/gennodejs/ros/text_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/argmm/TTS_and_brandname/catkin_ws/devel/lib/python2.7/dist-packages/text_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/argmm/TTS_and_brandname/catkin_ws/devel/lib/python2.7/dist-packages/text_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs/catkin_generated/installspace/text_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/text_msgs/cmake" TYPE FILE FILES "/home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs/catkin_generated/installspace/text_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/text_msgs/cmake" TYPE FILE FILES
    "/home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs/catkin_generated/installspace/text_msgsConfig.cmake"
    "/home/argmm/TTS_and_brandname/catkin_ws/build/brand_name/system_msgs/text_msgs/catkin_generated/installspace/text_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/text_msgs" TYPE FILE FILES "/home/argmm/TTS_and_brandname/catkin_ws/src/brand_name/system_msgs/text_msgs/package.xml")
endif()

