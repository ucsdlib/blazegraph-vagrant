echo "Installing Blazegraph"

SHARED_DIR=$1

if [ -f "$SHARED_DIR/install_scripts/config" ]; then
  . $SHARED_DIR/install_scripts/config
fi

if [ ! -f "$DOWNLOAD_DIR/bigdata-bundled.jar" ]; then
  echo -n "Downloading Blazegraph..."
  wget --no-verbose -O "$DOWNLOAD_DIR/bigdata-bundled.jar" "http://iweb.dl.sourceforge.net/project/bigdata/bigdata/$BLAZEGRAPH_VERSION/bigdata-bundled.jar"
  echo " done"
fi

cd $DOWNLOAD_DIR

chown -hR vagrant:vagrant bigdata-bundled.jar

echo "Starting Blazegraph"
java -server -Xmx1g -jar bigdata-bundled.jar > /dev/null &
