echo "Installing Blazegraph"

BLAZEGRAPH_VERSION=BLAZEGRAPH_RELEASE_2_1_4

SHARED_DIR=$1

if [ -f "$SHARED_DIR/scripts/config" ]; then
  . $SHARED_DIR/scripts/config
fi

if [ ! -f "$DOWNLOAD_DIR/$BLAZEGRAPH_VERSION/scripts/mavenInstall.sh" ]; then
  echo -n "Downloading Blazegraph..."
  cd $DOWNLOAD_DIR
  git clone -b $BLAZEGRAPH_VERSION --single-branch https://github.com/blazegraph/database.git $BLAZEGRAPH_VERSION
  chown -hR vagrant:vagrant $BLAZEGRAPH_VERSION
  cd $BLAZEGRAPH_VERSION
  ./scripts/mavenInstall.sh
  echo " done"
fi

echo "Starting Blazegraph"
cd $DOWNLOAD_DIR/$BLAZEGRAPH_VERSION
./scripts/startBlazegraph.sh &

