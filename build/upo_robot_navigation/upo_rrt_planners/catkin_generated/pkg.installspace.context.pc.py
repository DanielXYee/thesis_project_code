# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "angles;cmake_modules;geometry_msgs;nav_msgs;roscpp;rosconsole;tf;std_msgs;visualization_msgs;upo_msgs;navigation_features;gmm_sampling;dynamic_reconfigure;message_runtime".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lupo_rrt_planners;-lupo_rrt_planners_ros".split(';') if "-lupo_rrt_planners;-lupo_rrt_planners_ros" != "" else []
PROJECT_NAME = "upo_rrt_planners"
PROJECT_SPACE_DIR = "/home/im_hongxian_yi/catkin_ws/install"
PROJECT_VERSION = "1.0.0"
