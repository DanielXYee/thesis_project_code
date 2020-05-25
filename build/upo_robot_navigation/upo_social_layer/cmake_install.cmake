# Install script for directory: /home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_social_layer

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/upo_social_layer/srv" TYPE FILE FILES
    "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_social_layer/srv/Features.srv"
    "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_social_layer/srv/Cost.srv"
    "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_social_layer/srv/SetGoal.srv"
    "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_social_layer/srv/SetDemoPath.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/upo_social_layer/cmake" TYPE FILE FILES "/home/im_hongxian_yi/catkin_ws/build/upo_robot_navigation/upo_social_layer/catkin_generated/installspace/upo_social_layer-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/im_hongxian_yi/catkin_ws/devel/include/upo_social_layer")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/im_hongxian_yi/catkin_ws/devel/share/roseus/ros/upo_social_layer")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/im_hongxian_yi/catkin_ws/devel/share/common-lisp/ros/upo_social_layer")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/im_hongxian_yi/catkin_ws/devel/share/gennodejs/ros/upo_social_layer")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/im_hongxian_yi/catkin_ws/devel/lib/python2.7/dist-packages/upo_social_layer")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/im_hongxian_yi/catkin_ws/devel/lib/python2.7/dist-packages/upo_social_layer")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/upo_social_layer" TYPE FILE FILES "/home/im_hongxian_yi/catkin_ws/devel/include/upo_social_layer/SocialPluginConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/upo_social_layer" TYPE FILE FILES "/home/im_hongxian_yi/catkin_ws/devel/lib/python2.7/dist-packages/upo_social_layer/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/im_hongxian_yi/catkin_ws/devel/lib/python2.7/dist-packages/upo_social_layer/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/upo_social_layer" TYPE DIRECTORY FILES "/home/im_hongxian_yi/catkin_ws/devel/lib/python2.7/dist-packages/upo_social_layer/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/im_hongxian_yi/catkin_ws/build/upo_robot_navigation/upo_social_layer/catkin_generated/installspace/upo_social_layer.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/upo_social_layer/cmake" TYPE FILE FILES "/home/im_hongxian_yi/catkin_ws/build/upo_robot_navigation/upo_social_layer/catkin_generated/installspace/upo_social_layer-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/upo_social_layer/cmake" TYPE FILE FILES
    "/home/im_hongxian_yi/catkin_ws/build/upo_robot_navigation/upo_social_layer/catkin_generated/installspace/upo_social_layerConfig.cmake"
    "/home/im_hongxian_yi/catkin_ws/build/upo_robot_navigation/upo_social_layer/catkin_generated/installspace/upo_social_layerConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/upo_social_layer" TYPE FILE FILES "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_social_layer/package.xml")
endif()

