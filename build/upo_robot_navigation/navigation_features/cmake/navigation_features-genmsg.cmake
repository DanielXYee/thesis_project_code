# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "navigation_features: 0 messages, 6 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iupo_msgs:/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(navigation_features_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetLossCost.srv" NAME_WE)
add_custom_target(_navigation_features_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigation_features" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetLossCost.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetWeights.srv" NAME_WE)
add_custom_target(_navigation_features_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigation_features" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetWeights.srv" ""
)

get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/GetFeatureCount.srv" NAME_WE)
add_custom_target(_navigation_features_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigation_features" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/GetFeatureCount.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetScenario.srv" NAME_WE)
add_custom_target(_navigation_features_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigation_features" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetScenario.srv" "geometry_msgs/PoseStamped:std_msgs/Header:sensor_msgs/PointField:geometry_msgs/Point:geometry_msgs/Quaternion:upo_msgs/PersonPoseArrayUPO:geometry_msgs/Pose:upo_msgs/PersonPoseUPO:sensor_msgs/PointCloud2"
)

get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/PoseValid.srv" NAME_WE)
add_custom_target(_navigation_features_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigation_features" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/PoseValid.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/InitWeights.srv" NAME_WE)
add_custom_target(_navigation_features_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navigation_features" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/InitWeights.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetLossCost.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation_features
)
_generate_srv_cpp(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation_features
)
_generate_srv_cpp(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/GetFeatureCount.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation_features
)
_generate_srv_cpp(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetScenario.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation_features
)
_generate_srv_cpp(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/PoseValid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation_features
)
_generate_srv_cpp(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/InitWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation_features
)

### Generating Module File
_generate_module_cpp(navigation_features
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation_features
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(navigation_features_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(navigation_features_generate_messages navigation_features_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetLossCost.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_cpp _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetWeights.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_cpp _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/GetFeatureCount.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_cpp _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetScenario.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_cpp _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/PoseValid.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_cpp _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/InitWeights.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_cpp _navigation_features_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigation_features_gencpp)
add_dependencies(navigation_features_gencpp navigation_features_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigation_features_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetLossCost.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation_features
)
_generate_srv_eus(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation_features
)
_generate_srv_eus(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/GetFeatureCount.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation_features
)
_generate_srv_eus(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetScenario.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation_features
)
_generate_srv_eus(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/PoseValid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation_features
)
_generate_srv_eus(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/InitWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation_features
)

### Generating Module File
_generate_module_eus(navigation_features
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation_features
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(navigation_features_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(navigation_features_generate_messages navigation_features_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetLossCost.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_eus _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetWeights.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_eus _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/GetFeatureCount.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_eus _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetScenario.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_eus _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/PoseValid.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_eus _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/InitWeights.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_eus _navigation_features_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigation_features_geneus)
add_dependencies(navigation_features_geneus navigation_features_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigation_features_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetLossCost.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation_features
)
_generate_srv_lisp(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation_features
)
_generate_srv_lisp(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/GetFeatureCount.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation_features
)
_generate_srv_lisp(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetScenario.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation_features
)
_generate_srv_lisp(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/PoseValid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation_features
)
_generate_srv_lisp(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/InitWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation_features
)

### Generating Module File
_generate_module_lisp(navigation_features
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation_features
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(navigation_features_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(navigation_features_generate_messages navigation_features_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetLossCost.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_lisp _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetWeights.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_lisp _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/GetFeatureCount.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_lisp _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetScenario.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_lisp _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/PoseValid.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_lisp _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/InitWeights.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_lisp _navigation_features_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigation_features_genlisp)
add_dependencies(navigation_features_genlisp navigation_features_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigation_features_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetLossCost.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation_features
)
_generate_srv_nodejs(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation_features
)
_generate_srv_nodejs(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/GetFeatureCount.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation_features
)
_generate_srv_nodejs(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetScenario.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation_features
)
_generate_srv_nodejs(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/PoseValid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation_features
)
_generate_srv_nodejs(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/InitWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation_features
)

### Generating Module File
_generate_module_nodejs(navigation_features
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation_features
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(navigation_features_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(navigation_features_generate_messages navigation_features_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetLossCost.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_nodejs _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetWeights.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_nodejs _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/GetFeatureCount.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_nodejs _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetScenario.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_nodejs _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/PoseValid.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_nodejs _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/InitWeights.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_nodejs _navigation_features_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigation_features_gennodejs)
add_dependencies(navigation_features_gennodejs navigation_features_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigation_features_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetLossCost.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation_features
)
_generate_srv_py(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation_features
)
_generate_srv_py(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/GetFeatureCount.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation_features
)
_generate_srv_py(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetScenario.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseArrayUPO.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_msgs/msg/PersonPoseUPO.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation_features
)
_generate_srv_py(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/PoseValid.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation_features
)
_generate_srv_py(navigation_features
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/InitWeights.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation_features
)

### Generating Module File
_generate_module_py(navigation_features
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation_features
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(navigation_features_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(navigation_features_generate_messages navigation_features_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetLossCost.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_py _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetWeights.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_py _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/GetFeatureCount.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_py _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/SetScenario.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_py _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/PoseValid.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_py _navigation_features_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/navigation_features/srv/InitWeights.srv" NAME_WE)
add_dependencies(navigation_features_generate_messages_py _navigation_features_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navigation_features_genpy)
add_dependencies(navigation_features_genpy navigation_features_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navigation_features_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation_features)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navigation_features
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(navigation_features_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(navigation_features_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET upo_msgs_generate_messages_cpp)
  add_dependencies(navigation_features_generate_messages_cpp upo_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation_features)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navigation_features
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(navigation_features_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(navigation_features_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET upo_msgs_generate_messages_eus)
  add_dependencies(navigation_features_generate_messages_eus upo_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation_features)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navigation_features
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(navigation_features_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(navigation_features_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET upo_msgs_generate_messages_lisp)
  add_dependencies(navigation_features_generate_messages_lisp upo_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation_features)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navigation_features
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(navigation_features_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(navigation_features_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET upo_msgs_generate_messages_nodejs)
  add_dependencies(navigation_features_generate_messages_nodejs upo_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation_features)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation_features\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navigation_features
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(navigation_features_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(navigation_features_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET upo_msgs_generate_messages_py)
  add_dependencies(navigation_features_generate_messages_py upo_msgs_generate_messages_py)
endif()
