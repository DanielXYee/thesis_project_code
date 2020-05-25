# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "path_prediction: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(path_prediction_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/path_prediction/srv/PathPrediction.srv" NAME_WE)
add_custom_target(_path_prediction_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "path_prediction" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/path_prediction/srv/PathPrediction.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(path_prediction
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/path_prediction/srv/PathPrediction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_prediction
)

### Generating Module File
_generate_module_cpp(path_prediction
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_prediction
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(path_prediction_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(path_prediction_generate_messages path_prediction_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/path_prediction/srv/PathPrediction.srv" NAME_WE)
add_dependencies(path_prediction_generate_messages_cpp _path_prediction_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_prediction_gencpp)
add_dependencies(path_prediction_gencpp path_prediction_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_prediction_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(path_prediction
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/path_prediction/srv/PathPrediction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_prediction
)

### Generating Module File
_generate_module_eus(path_prediction
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_prediction
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(path_prediction_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(path_prediction_generate_messages path_prediction_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/path_prediction/srv/PathPrediction.srv" NAME_WE)
add_dependencies(path_prediction_generate_messages_eus _path_prediction_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_prediction_geneus)
add_dependencies(path_prediction_geneus path_prediction_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_prediction_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(path_prediction
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/path_prediction/srv/PathPrediction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_prediction
)

### Generating Module File
_generate_module_lisp(path_prediction
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_prediction
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(path_prediction_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(path_prediction_generate_messages path_prediction_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/path_prediction/srv/PathPrediction.srv" NAME_WE)
add_dependencies(path_prediction_generate_messages_lisp _path_prediction_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_prediction_genlisp)
add_dependencies(path_prediction_genlisp path_prediction_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_prediction_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(path_prediction
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/path_prediction/srv/PathPrediction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_prediction
)

### Generating Module File
_generate_module_nodejs(path_prediction
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_prediction
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(path_prediction_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(path_prediction_generate_messages path_prediction_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/path_prediction/srv/PathPrediction.srv" NAME_WE)
add_dependencies(path_prediction_generate_messages_nodejs _path_prediction_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_prediction_gennodejs)
add_dependencies(path_prediction_gennodejs path_prediction_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_prediction_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(path_prediction
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/path_prediction/srv/PathPrediction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_prediction
)

### Generating Module File
_generate_module_py(path_prediction
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_prediction
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(path_prediction_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(path_prediction_generate_messages path_prediction_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/path_prediction/srv/PathPrediction.srv" NAME_WE)
add_dependencies(path_prediction_generate_messages_py _path_prediction_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(path_prediction_genpy)
add_dependencies(path_prediction_genpy path_prediction_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS path_prediction_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_prediction)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/path_prediction
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(path_prediction_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_prediction)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/path_prediction
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(path_prediction_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_prediction)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/path_prediction
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(path_prediction_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_prediction)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/path_prediction
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(path_prediction_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_prediction)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_prediction\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/path_prediction
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(path_prediction_generate_messages_py std_msgs_generate_messages_py)
endif()
