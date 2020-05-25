# Install script for directory: /home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/im_hongxian_yi/catkin_ws/install")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/upo_msgs/msg" TYPE FILE FILES
    "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg"
    "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg"
    "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalArrayUPO.msg"
    "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/upo_msgs/cmake" TYPE FILE FILES "/home/im_hongxian_yi/catkin_ws/build/upo_robot_navigation/upo_msgs/catkin_generated/installspace/upo_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/im_hongxian_yi/catkin_ws/devel/include/upo_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/im_hongxian_yi/catkin_ws/devel/share/roseus/ros/upo_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/im_hongxian_yi/catkin_ws/devel/share/common-lisp/ros/upo_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/im_hongxian_yi/catkin_ws/devel/share/gennodejs/ros/upo_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/im_hongxian_yi/catkin_ws/devel/lib/python2.7/dist-packages/upo_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/im_hongxian_yi/catkin_ws/devel/lib/python2.7/dist-packages/upo_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/im_hongxian_yi/catkin_ws/build/upo_robot_navigation/upo_msgs/catkin_generated/installspace/upo_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/upo_msgs/cmake" TYPE FILE FILES "/home/im_hongxian_yi/catkin_ws/build/upo_robot_navigation/upo_msgs/catkin_generated/installspace/upo_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/upo_msgs/cmake" TYPE FILE FILES
    "/home/im_hongxian_yi/catkin_ws/build/upo_robot_navigation/upo_msgs/catkin_generated/installspace/upo_msgsConfig.cmake"
    "/home/im_hongxian_yi/catkin_ws/build/upo_robot_navigation/upo_msgs/catkin_generated/installspace/upo_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/upo_msgs" TYPE FILE FILES "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/package.xml")
endif()

