# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "distance_calculator: 0 messages, 1 services")

set(MSG_I_FLAGS "-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(distance_calculator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/distance_calculator/srv/GetDistance.srv" NAME_WE)
add_custom_target(_distance_calculator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "distance_calculator" "/home/tanya/Desktop/catkin_ws/src/distance_calculator/srv/GetDistance.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(distance_calculator
  "/home/tanya/Desktop/catkin_ws/src/distance_calculator/srv/GetDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/distance_calculator
)

### Generating Module File
_generate_module_cpp(distance_calculator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/distance_calculator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(distance_calculator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(distance_calculator_generate_messages distance_calculator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/distance_calculator/srv/GetDistance.srv" NAME_WE)
add_dependencies(distance_calculator_generate_messages_cpp _distance_calculator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(distance_calculator_gencpp)
add_dependencies(distance_calculator_gencpp distance_calculator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS distance_calculator_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(distance_calculator
  "/home/tanya/Desktop/catkin_ws/src/distance_calculator/srv/GetDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/distance_calculator
)

### Generating Module File
_generate_module_eus(distance_calculator
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/distance_calculator
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(distance_calculator_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(distance_calculator_generate_messages distance_calculator_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/distance_calculator/srv/GetDistance.srv" NAME_WE)
add_dependencies(distance_calculator_generate_messages_eus _distance_calculator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(distance_calculator_geneus)
add_dependencies(distance_calculator_geneus distance_calculator_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS distance_calculator_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(distance_calculator
  "/home/tanya/Desktop/catkin_ws/src/distance_calculator/srv/GetDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/distance_calculator
)

### Generating Module File
_generate_module_lisp(distance_calculator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/distance_calculator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(distance_calculator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(distance_calculator_generate_messages distance_calculator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/distance_calculator/srv/GetDistance.srv" NAME_WE)
add_dependencies(distance_calculator_generate_messages_lisp _distance_calculator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(distance_calculator_genlisp)
add_dependencies(distance_calculator_genlisp distance_calculator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS distance_calculator_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(distance_calculator
  "/home/tanya/Desktop/catkin_ws/src/distance_calculator/srv/GetDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/distance_calculator
)

### Generating Module File
_generate_module_nodejs(distance_calculator
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/distance_calculator
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(distance_calculator_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(distance_calculator_generate_messages distance_calculator_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/distance_calculator/srv/GetDistance.srv" NAME_WE)
add_dependencies(distance_calculator_generate_messages_nodejs _distance_calculator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(distance_calculator_gennodejs)
add_dependencies(distance_calculator_gennodejs distance_calculator_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS distance_calculator_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(distance_calculator
  "/home/tanya/Desktop/catkin_ws/src/distance_calculator/srv/GetDistance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/distance_calculator
)

### Generating Module File
_generate_module_py(distance_calculator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/distance_calculator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(distance_calculator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(distance_calculator_generate_messages distance_calculator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/tanya/Desktop/catkin_ws/src/distance_calculator/srv/GetDistance.srv" NAME_WE)
add_dependencies(distance_calculator_generate_messages_py _distance_calculator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(distance_calculator_genpy)
add_dependencies(distance_calculator_genpy distance_calculator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS distance_calculator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/distance_calculator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/distance_calculator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(distance_calculator_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/distance_calculator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/distance_calculator
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(distance_calculator_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/distance_calculator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/distance_calculator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(distance_calculator_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/distance_calculator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/distance_calculator
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(distance_calculator_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/distance_calculator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/distance_calculator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/distance_calculator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(distance_calculator_generate_messages_py nav_msgs_generate_messages_py)
endif()
