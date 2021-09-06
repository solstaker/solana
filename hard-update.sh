#!/bin/bash
#set -x -e

echo "###################### WARNING!!! ###################################"
echo "###   This script will perform the following operations:          ###"
echo "###   * download validator binaries                               ###"
echo "###   * restart validator service                                 ###"
echo "#####################################################################"

update_validator() {
  sudo -i -u root solana-install init "$version"
  systemctl restart solana
}


version=${1:-latest}

echo "updating to version $version"

update_validator
