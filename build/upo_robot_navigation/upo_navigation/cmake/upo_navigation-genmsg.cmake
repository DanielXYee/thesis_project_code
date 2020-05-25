# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "upo_navigation: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iupo_msgs:/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(upo_navigation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/SetWeights.srv" NAME_WE)
add_custom_target(_upo_navigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upo_navigation" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/SetWeights.srv" ""
)

get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/FeatureCounts.srv" NAME_WE)
add_custom_target(_upo_navigation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upo_navigation" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/FeatureCounts.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(upo_navigation
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/SetWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_navigation
)
_generate_srv_cpp(upo_navigation
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/FeatureCounts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_navigation
)

### Generating Module File
_generate_module_cpp(upo_navigation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_navigation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(upo_navigation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(upo_navigation_generate_messages upo_navigation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/SetWeights.srv" NAME_WE)
add_dependencies(upo_navigation_generate_messages_cpp _upo_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/FeatureCounts.srv" NAME_WE)
add_dependencies(upo_navigation_generate_messages_cpp _upo_navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_navigation_gencpp)
add_dependencies(upo_navigation_gencpp upo_navigation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_navigation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(upo_navigation
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/SetWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_navigation
)
_generate_srv_eus(upo_navigation
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/FeatureCounts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_navigation
)

### Generating Module File
_generate_module_eus(upo_navigation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_navigation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(upo_navigation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(upo_navigation_generate_messages upo_navigation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/SetWeights.srv" NAME_WE)
add_dependencies(upo_navigation_generate_messages_eus _upo_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/FeatureCounts.srv" NAME_WE)
add_dependencies(upo_navigation_generate_messages_eus _upo_navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_navigation_geneus)
add_dependencies(upo_navigation_geneus upo_navigation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_navigation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(upo_navigation
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/SetWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_navigation
)
_generate_srv_lisp(upo_navigation
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/FeatureCounts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_navigation
)

### Generating Module File
_generate_module_lisp(upo_navigation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_navigation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(upo_navigation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(upo_navigation_generate_messages upo_navigation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/SetWeights.srv" NAME_WE)
add_dependencies(upo_navigation_generate_messages_lisp _upo_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/FeatureCounts.srv" NAME_WE)
add_dependencies(upo_navigation_generate_messages_lisp _upo_navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_navigation_genlisp)
add_dependencies(upo_navigation_genlisp upo_navigation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_navigation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(upo_navigation
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/SetWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_navigation
)
_generate_srv_nodejs(upo_navigation
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/FeatureCounts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_navigation
)

### Generating Module File
_generate_module_nodejs(upo_navigation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_navigation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(upo_navigation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(upo_navigation_generate_messages upo_navigation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/SetWeights.srv" NAME_WE)
add_dependencies(upo_navigation_generate_messages_nodejs _upo_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/FeatureCounts.srv" NAME_WE)
add_dependencies(upo_navigation_generate_messages_nodejs _upo_navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_navigation_gennodejs)
add_dependencies(upo_navigation_gennodejs upo_navigation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_navigation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(upo_navigation
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/SetWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_navigation
)
_generate_srv_py(upo_navigation
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/FeatureCounts.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_navigation
)

### Generating Module File
_generate_module_py(upo_navigation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_navigation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(upo_navigation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(upo_navigation_generate_messages upo_navigation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/SetWeights.srv" NAME_WE)
add_dependencies(upo_navigation_generate_messages_py _upo_navigation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_navigation/srv/FeatureCounts.srv" NAME_WE)
add_dependencies(upo_navigation_generate_messages_py _upo_navigation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_navigation_genpy)
add_dependencies(upo_navigation_genpy upo_navigation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_navigation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_navigation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(upo_navigation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET upo_msgs_generate_messages_cpp)
  add_dependencies(upo_navigation_generate_messages_cpp upo_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_navigation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(upo_navigation_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET upo_msgs_generate_messages_eus)
  add_dependencies(upo_navigation_generate_messages_eus upo_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_navigation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(upo_navigation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET upo_msgs_generate_messages_lisp)
  add_dependencies(upo_navigation_generate_messages_lisp upo_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_navigation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_navigation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(upo_navigation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET upo_msgs_generate_messages_nodejs)
  add_dependencies(upo_navigation_generate_messages_nodejs upo_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_navigation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_navigation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_navigation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(upo_navigation_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET upo_msgs_generate_messages_py)
  add_dependencies(upo_navigation_generate_messages_py upo_msgs_generate_messages_py)
endif()
