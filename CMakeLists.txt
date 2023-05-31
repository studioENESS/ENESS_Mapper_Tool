cmake_minimum_required(VERSION 3.10)
# set the project name
project(scheduler)
add_compile_definitions(IMGUI_IMPL_OPENGL_ES2)
set(IMGUI_ROOT "${PROJECT_SOURCE_DIR}/src")
set(IMGUI_BACKENDS "${PROJECT_SOURCE_DIR}/src/backends")
set(PRG_ROOT "${PROJECT_SOURCE_DIR}/src/examples/example_glfw_opengl3")
#set(PFD_ROOT "${PROJECT_SOURCE_DIR}/External/portable-file-dialogs")
#set(LIBADV_ROOT "${PROJECT_SOURCE_DIR}/External/libAdvatek")

add_executable(scheduler  
	${PRG_ROOT}/main.cpp
	${PRG_ROOT}/imguidatechooser.cpp	
	${IMGUI_ROOT}/imgui.cpp
	${IMGUI_ROOT}/imgui_draw.cpp
	${IMGUI_ROOT}/imgui_widgets.cpp
	${IMGUI_ROOT}/imgui_tables.cpp
	${IMGUI_ROOT}/backends/imgui_impl_opengl3.cpp
	${IMGUI_ROOT}/backends/imgui_impl_glfw.cpp
	${IMGUI_ROOT}/misc/cpp/imgui_stdlib.cpp
)
set_property(TARGET ${PROJECT_NAME} PROPERTY CXX_STANDARD 20)
target_include_directories(${PROJECT_NAME} PRIVATE ${IMGUI_ROOT} ${IMGUI_BACKENDS} ${PFD_ROOT} ${LIBADV_ROOT} ${LIBADV_ROOT}/include )

target_link_libraries(${PROJECT_NAME} GLESv2 EGL X11 pthread rt m c dl glfw)
