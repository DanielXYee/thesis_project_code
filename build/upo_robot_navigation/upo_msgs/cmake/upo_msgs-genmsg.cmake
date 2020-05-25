# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "upo_msgs: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iupo_msgs:/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(upo_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalArrayUPO.msg" NAME_WE)
add_custom_target(_upo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upo_msgs" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalArrayUPO.msg" "geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:upo_msgs/PersonGoalUPO:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg" NAME_WE)
add_custom_target(_upo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upo_msgs" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg" "geometry_msgs/Quaternion:upo_msgs/PersonPoseUPO:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg" NAME_WE)
add_custom_target(_upo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upo_msgs" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg" NAME_WE)
add_custom_target(_upo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upo_msgs" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg" "geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalArrayUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_msgs
)
_generate_msg_cpp(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_msgs
)
_generate_msg_cpp(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_msgs
)
_generate_msg_cpp(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(upo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(upo_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(upo_msgs_generate_messages upo_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalArrayUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_cpp _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_cpp _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_cpp _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_cpp _upo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_msgs_gencpp)
add_dependencies(upo_msgs_gencpp upo_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalArrayUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_msgs
)
_generate_msg_eus(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_msgs
)
_generate_msg_eus(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_msgs
)
_generate_msg_eus(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(upo_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(upo_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(upo_msgs_generate_messages upo_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalArrayUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_eus _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_eus _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_eus _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_eus _upo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_msgs_geneus)
add_dependencies(upo_msgs_geneus upo_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalArrayUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_msgs
)
_generate_msg_lisp(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_msgs
)
_generate_msg_lisp(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_msgs
)
_generate_msg_lisp(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(upo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(upo_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(upo_msgs_generate_messages upo_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalArrayUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_lisp _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_lisp _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_lisp _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_lisp _upo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_msgs_genlisp)
add_dependencies(upo_msgs_genlisp upo_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalArrayUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_msgs
)
_generate_msg_nodejs(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_msgs
)
_generate_msg_nodejs(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_msgs
)
_generate_msg_nodejs(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(upo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(upo_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(upo_msgs_generate_messages upo_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalArrayUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_nodejs _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_nodejs _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_nodejs _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_nodejs _upo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_msgs_gennodejs)
add_dependencies(upo_msgs_gennodejs upo_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalArrayUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_msgs
)
_generate_msg_py(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_msgs
)
_generate_msg_py(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_msgs
)
_generate_msg_py(upo_msgs
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(upo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(upo_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(upo_msgs_generate_messages upo_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalArrayUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_py _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_py _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonGoalUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_py _upo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg" NAME_WE)
add_dependencies(upo_msgs_generate_messages_py _upo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_msgs_genpy)
add_dependencies(upo_msgs_genpy upo_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(upo_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(upo_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(upo_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(upo_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(upo_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(upo_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(upo_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(upo_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(upo_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(upo_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(upo_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(upo_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(upo_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(upo_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(upo_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()