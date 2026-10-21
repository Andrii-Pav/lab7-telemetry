#!/bin/bash

PLUGIN_LIB=$HOME/ardu_ws/install/ardupilot_gazebo/lib/ardupilot_gazebo
PLUGIN_SRC=$HOME/ardu_ws/src/ardupilot_gazebo
export GZ_SIM_SYSTEM_PLUGIN_PATH=$PLUGIN_LIB:$GZ_SIM_SYSTEM_PLUGIN_PATH
export GZ_SIM_RESOURCE_PATH=$PLUGIN_SRC/models:$PLUGIN_SRC/worlds:$GZ_SIM_RESOURCE_PATH
export QT_QPA_PLATFORM=xcb

gz sim -v2 -r \
  --render-engine-gui ogre \
  --render-engine-server ogre \
  iris_runway.sdf
