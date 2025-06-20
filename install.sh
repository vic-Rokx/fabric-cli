#!/bin/bash
set -e

# macOS install script
INSTALL_DIR="/usr/local/bin"
REPO="vic-Rokx/fabric-cli"
VERSION="v1.0.0"
TARBALL="fabric.tar.gz"
DIR="fabric-cli-1.0.0"

echo "Installing myprogram..."
curl -L -o /tmp/$TARBALL https://github.com/vic-Rokx/fabric-cli/archive/refs/tags/v1.0.0.tar.gz
cd /tmp
tar -xzf $TARBALL
cd $DIR
sudo cp fabric $INSTALL_DIR/
sudo chmod +x $INSTALL_DIR/fabric
rm -rf /tmp/$DIR /tmp/$TARBALL
echo "myprogram installed successfully!"
