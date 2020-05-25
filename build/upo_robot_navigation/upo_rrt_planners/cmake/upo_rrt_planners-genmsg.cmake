# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "upo_rrt_planners: 0 messages, 2 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(upo_rrt_planners_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlan.srv" NAME_WE)
add_custom_target(_upo_rrt_planners_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upo_rrt_planners" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlan.srv" "geometry_msgs/Quaternion:geometry_msgs/PoseStamped:geometry_msgs/Pose:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlanCostmap.srv" NAME_WE)
add_custom_target(_upo_rrt_planners_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "upo_rrt_planners" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlanCostmap.srv" "nav_msgs/MapMetaData:geometry_msgs/PoseStamped:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:nav_msgs/OccupancyGrid:geometry_msgs/Pose"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(upo_rrt_planners
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_rrt_planners
)
_generate_srv_cpp(upo_rrt_planners
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlanCostmap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_rrt_planners
)

### Generating Module File
_generate_module_cpp(upo_rrt_planners
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_rrt_planners
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(upo_rrt_planners_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(upo_rrt_planners_generate_messages upo_rrt_planners_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlan.srv" NAME_WE)
add_dependencies(upo_rrt_planners_generate_messages_cpp _upo_rrt_planners_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlanCostmap.srv" NAME_WE)
add_dependencies(upo_rrt_planners_generate_messages_cpp _upo_rrt_planners_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_rrt_planners_gencpp)
add_dependencies(upo_rrt_planners_gencpp upo_rrt_planners_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_rrt_planners_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(upo_rrt_planners
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_rrt_planners
)
_generate_srv_eus(upo_rrt_planners
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlanCostmap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_rrt_planners
)

### Generating Module File
_generate_module_eus(upo_rrt_planners
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_rrt_planners
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(upo_rrt_planners_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(upo_rrt_planners_generate_messages upo_rrt_planners_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlan.srv" NAME_WE)
add_dependencies(upo_rrt_planners_generate_messages_eus _upo_rrt_planners_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlanCostmap.srv" NAME_WE)
add_dependencies(upo_rrt_planners_generate_messages_eus _upo_rrt_planners_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_rrt_planners_geneus)
add_dependencies(upo_rrt_planners_geneus upo_rrt_planners_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_rrt_planners_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(upo_rrt_planners
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_rrt_planners
)
_generate_srv_lisp(upo_rrt_planners
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlanCostmap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_rrt_planners
)

### Generating Module File
_generate_module_lisp(upo_rrt_planners
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_rrt_planners
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(upo_rrt_planners_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(upo_rrt_planners_generate_messages upo_rrt_planners_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlan.srv" NAME_WE)
add_dependencies(upo_rrt_planners_generate_messages_lisp _upo_rrt_planners_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlanCostmap.srv" NAME_WE)
add_dependencies(upo_rrt_planners_generate_messages_lisp _upo_rrt_planners_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_rrt_planners_genlisp)
add_dependencies(upo_rrt_planners_genlisp upo_rrt_planners_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_rrt_planners_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(upo_rrt_planners
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_rrt_planners
)
_generate_srv_nodejs(upo_rrt_planners
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlanCostmap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_rrt_planners
)

### Generating Module File
_generate_module_nodejs(upo_rrt_planners
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_rrt_planners
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(upo_rrt_planners_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(upo_rrt_planners_generate_messages upo_rrt_planners_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlan.srv" NAME_WE)
add_dependencies(upo_rrt_planners_generate_messages_nodejs _upo_rrt_planners_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlanCostmap.srv" NAME_WE)
add_dependencies(upo_rrt_planners_generate_messages_nodejs _upo_rrt_planners_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_rrt_planners_gennodejs)
add_dependencies(upo_rrt_planners_gennodejs upo_rrt_planners_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_rrt_planners_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(upo_rrt_planners
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlan.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_rrt_planners
)
_generate_srv_py(upo_rrt_planners
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlanCostmap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/nav_msgs/cmake/../msg/MapMetaData.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/OccupancyGrid.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_rrt_planners
)

### Generating Module File
_generate_module_py(upo_rrt_planners
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_rrt_planners
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(upo_rrt_planners_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(upo_rrt_planners_generate_messages upo_rrt_planners_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlan.srv" NAME_WE)
add_dependencies(upo_rrt_planners_generate_messages_py _upo_rrt_planners_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/upo_rrt_planners/srv/MakePlanCostmap.srv" NAME_WE)
add_dependencies(upo_rrt_planners_generate_messages_py _upo_rrt_planners_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(upo_rrt_planners_genpy)
add_dependencies(upo_rrt_planners_genpy upo_rrt_planners_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS upo_rrt_planners_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_rrt_planners)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/upo_rrt_planners
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(upo_rrt_planners_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(upo_rrt_planners_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(upo_rrt_planners_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_rrt_planners)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/upo_rrt_planners
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(upo_rrt_planners_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(upo_rrt_planners_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(upo_rrt_planners_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_rrt_planners)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/upo_rrt_planners
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(upo_rrt_planners_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(upo_rrt_planners_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(upo_rrt_planners_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_rrt_planners)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/upo_rrt_planners
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(upo_rrt_planners_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(upo_rrt_planners_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(upo_rrt_planners_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_rrt_planners)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_rrt_planners\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/upo_rrt_planners
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(upo_rrt_planners_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(upo_rrt_planners_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(upo_rrt_planners_generate_messages_py nav_msgs_generate_messages_py)
endif()
