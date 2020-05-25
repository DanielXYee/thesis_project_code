# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "gmm_sampling: 0 messages, 3 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/kinetic/share/visualization_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(gmm_sampling_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProb.srv" NAME_WE)
add_custom_target(_gmm_sampling_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gmm_sampling" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProb.srv" ""
)

get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProbs.srv" NAME_WE)
add_custom_target(_gmm_sampling_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gmm_sampling" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProbs.srv" ""
)

get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMSamples.srv" NAME_WE)
add_custom_target(_gmm_sampling_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "gmm_sampling" "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMSamples.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProbs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gmm_sampling
)
_generate_srv_cpp(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProb.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gmm_sampling
)
_generate_srv_cpp(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMSamples.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gmm_sampling
)

### Generating Module File
_generate_module_cpp(gmm_sampling
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gmm_sampling
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(gmm_sampling_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(gmm_sampling_generate_messages gmm_sampling_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProb.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_cpp _gmm_sampling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProbs.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_cpp _gmm_sampling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMSamples.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_cpp _gmm_sampling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gmm_sampling_gencpp)
add_dependencies(gmm_sampling_gencpp gmm_sampling_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gmm_sampling_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProbs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gmm_sampling
)
_generate_srv_eus(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProb.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gmm_sampling
)
_generate_srv_eus(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMSamples.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gmm_sampling
)

### Generating Module File
_generate_module_eus(gmm_sampling
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gmm_sampling
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(gmm_sampling_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(gmm_sampling_generate_messages gmm_sampling_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProb.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_eus _gmm_sampling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProbs.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_eus _gmm_sampling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMSamples.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_eus _gmm_sampling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gmm_sampling_geneus)
add_dependencies(gmm_sampling_geneus gmm_sampling_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gmm_sampling_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProbs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gmm_sampling
)
_generate_srv_lisp(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProb.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gmm_sampling
)
_generate_srv_lisp(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMSamples.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gmm_sampling
)

### Generating Module File
_generate_module_lisp(gmm_sampling
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gmm_sampling
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(gmm_sampling_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(gmm_sampling_generate_messages gmm_sampling_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProb.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_lisp _gmm_sampling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProbs.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_lisp _gmm_sampling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMSamples.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_lisp _gmm_sampling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gmm_sampling_genlisp)
add_dependencies(gmm_sampling_genlisp gmm_sampling_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gmm_sampling_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProbs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gmm_sampling
)
_generate_srv_nodejs(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProb.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gmm_sampling
)
_generate_srv_nodejs(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMSamples.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gmm_sampling
)

### Generating Module File
_generate_module_nodejs(gmm_sampling
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gmm_sampling
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(gmm_sampling_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(gmm_sampling_generate_messages gmm_sampling_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProb.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_nodejs _gmm_sampling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProbs.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_nodejs _gmm_sampling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMSamples.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_nodejs _gmm_sampling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gmm_sampling_gennodejs)
add_dependencies(gmm_sampling_gennodejs gmm_sampling_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gmm_sampling_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProbs.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gmm_sampling
)
_generate_srv_py(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProb.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gmm_sampling
)
_generate_srv_py(gmm_sampling
  "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMSamples.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gmm_sampling
)

### Generating Module File
_generate_module_py(gmm_sampling
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gmm_sampling
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(gmm_sampling_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(gmm_sampling_generate_messages gmm_sampling_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProb.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_py _gmm_sampling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMProbs.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_py _gmm_sampling_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/im_hongxian_yi/catkin_ws/src/upo_robot_navigation/gmm_sampling/srv/GetApproachGMMSamples.srv" NAME_WE)
add_dependencies(gmm_sampling_generate_messages_py _gmm_sampling_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(gmm_sampling_genpy)
add_dependencies(gmm_sampling_genpy gmm_sampling_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS gmm_sampling_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gmm_sampling)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/gmm_sampling
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(gmm_sampling_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(gmm_sampling_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gmm_sampling)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/gmm_sampling
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(gmm_sampling_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(gmm_sampling_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gmm_sampling)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/gmm_sampling
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(gmm_sampling_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(gmm_sampling_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gmm_sampling)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/gmm_sampling
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(gmm_sampling_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(gmm_sampling_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gmm_sampling)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gmm_sampling\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/gmm_sampling
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(gmm_sampling_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(gmm_sampling_generate_messages_py visualization_msgs_generate_messages_py)
endif()
