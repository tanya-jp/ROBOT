# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sen_one: 1 messages, 1 services")

set(MSG_I_FLAGS "-Isen_one:/home/tanya/Desktop/catkin_ws/src/sen_one/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sen_one_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/sen_one/msg/dist.msg" NAME_WE)
add_custom_target(_sen_one_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sen_one" "/home/tanya/Desktop/catkin_ws/src/sen_one/msg/dist.msg" ""
)

get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/sen_one/srv/GetDistance.srv" NAME_WE)
add_custom_target(_sen_one_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sen_one" "/home/tanya/Desktop/catkin_ws/src/sen_one/srv/GetDistance.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sen_one
  "/home/tanya/Desktop/catkin_ws/src/sen_one/msg/dist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sen_one
)

### Generating Services
_generate_srv_cpp(sen_one
  "/home/tanya/Desktop/catkin_ws/src/sen_one/srv/GetDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sen_one
)

### Generating Module File
_generate_module_cpp(sen_one
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sen_one
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sen_one_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sen_one_generate_messages sen_one_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/sen_one/msg/dist.msg" NAME_WE)
add_dependencies(sen_one_generate_messages_cpp _sen_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/sen_one/srv/GetDistance.srv" NAME_WE)
add_dependencies(sen_one_generate_messages_cpp _sen_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sen_one_gencpp)
add_dependencies(sen_one_gencpp sen_one_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sen_one_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sen_one
  "/home/tanya/Desktop/catkin_ws/src/sen_one/msg/dist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sen_one
)

### Generating Services
_generate_srv_eus(sen_one
  "/home/tanya/Desktop/catkin_ws/src/sen_one/srv/GetDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sen_one
)

### Generating Module File
_generate_module_eus(sen_one
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sen_one
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sen_one_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sen_one_generate_messages sen_one_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/sen_one/msg/dist.msg" NAME_WE)
add_dependencies(sen_one_generate_messages_eus _sen_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/sen_one/srv/GetDistance.srv" NAME_WE)
add_dependencies(sen_one_generate_messages_eus _sen_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sen_one_geneus)
add_dependencies(sen_one_geneus sen_one_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sen_one_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sen_one
  "/home/tanya/Desktop/catkin_ws/src/sen_one/msg/dist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sen_one
)

### Generating Services
_generate_srv_lisp(sen_one
  "/home/tanya/Desktop/catkin_ws/src/sen_one/srv/GetDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sen_one
)

### Generating Module File
_generate_module_lisp(sen_one
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sen_one
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sen_one_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sen_one_generate_messages sen_one_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/sen_one/msg/dist.msg" NAME_WE)
add_dependencies(sen_one_generate_messages_lisp _sen_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/sen_one/srv/GetDistance.srv" NAME_WE)
add_dependencies(sen_one_generate_messages_lisp _sen_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sen_one_genlisp)
add_dependencies(sen_one_genlisp sen_one_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sen_one_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sen_one
  "/home/tanya/Desktop/catkin_ws/src/sen_one/msg/dist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sen_one
)

### Generating Services
_generate_srv_nodejs(sen_one
  "/home/tanya/Desktop/catkin_ws/src/sen_one/srv/GetDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sen_one
)

### Generating Module File
_generate_module_nodejs(sen_one
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sen_one
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sen_one_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sen_one_generate_messages sen_one_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/sen_one/msg/dist.msg" NAME_WE)
add_dependencies(sen_one_generate_messages_nodejs _sen_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/sen_one/srv/GetDistance.srv" NAME_WE)
add_dependencies(sen_one_generate_messages_nodejs _sen_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sen_one_gennodejs)
add_dependencies(sen_one_gennodejs sen_one_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sen_one_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sen_one
  "/home/tanya/Desktop/catkin_ws/src/sen_one/msg/dist.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sen_one
)

### Generating Services
_generate_srv_py(sen_one
  "/home/tanya/Desktop/catkin_ws/src/sen_one/srv/GetDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sen_one
)

### Generating Module File
_generate_module_py(sen_one
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sen_one
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sen_one_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sen_one_generate_messages sen_one_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/sen_one/msg/dist.msg" NAME_WE)
add_dependencies(sen_one_generate_messages_py _sen_one_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/sen_one/srv/GetDistance.srv" NAME_WE)
add_dependencies(sen_one_generate_messages_py _sen_one_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sen_one_genpy)
add_dependencies(sen_one_genpy sen_one_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sen_one_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sen_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sen_one
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sen_one_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sen_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sen_one
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sen_one_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sen_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sen_one
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sen_one_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sen_one)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sen_one
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sen_one_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sen_one)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sen_one\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sen_one
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sen_one_generate_messages_py std_msgs_generate_messages_py)
endif()
