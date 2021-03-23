DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

GAZEBO_BIN_PATH=`which gazebo`
GAZEBO_PREFIX=$(dirname $(dirname $GAZEBO_BIN_PATH))

if [ -f ${GAZEBO_PREFIX}/share/gazebo/setup.sh ]; then
  . ${GAZEBO_PREFIX}/share/gazebo/setup.sh
elif [ -f /usr/share/gazebo/setup.sh ]; then
  . /usr/share/gazebo/setup.sh
else
  echo "Warning: failed to find Gazebo's setup.sh.  You will need to source it manually."
fi

export GAZEBO_RESOURCE_PATH=$DIR:${GAZEBO_RESOURCE_PATH}

export GAZEBO_MODEL_PATH=$DIR/models:${GAZEBO_MODEL_PATH}

#export GAZEBO_PLUGIN_PATH=$DIR/plugins:${GAZEBO_PLUGIN_PATH}
