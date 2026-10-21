#!/bin/bash
ARDUPILOT_DIR=$HOME/ardu_ws/src/ardupilot
PARAMS=$HOME/ardu_ws/src/ardupilot_gazebo/config/gazebo-iris-gimbal.parm
export PATH=$ARDUPILOT_DIR/Tools/autotest:$HOME/.local/bin:$PATH

cd $HOME/lab7/sitl_run
sim_vehicle.py -v ArduCopter -f gazebo-iris --model JSON \
  --add-param-file=$PARAMS --console
