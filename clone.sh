#!/bin/bash

TOP_DIR=$(pwd)

ORIGIN_DIR=${TOP_DIR}/origin

set -ex

rm -rf ${TOP_DIR}/bin         \
       ${TOP_DIR}/virtManager \
       ${TOP_DIR}/virtcli     \
       ${TOP_DIR}/virtconv    \
       ${TOP_DIR}/virtinst

cd origin
if [ ! -f ${ORIGIN_DIR}/virt-manager ]; then
    git submodule init
    git submodule update
fi

mkdir -p ${TOP_DIR}/bin
cp -rv ${ORIGIN_DIR}/virt-clone    ${TOP_DIR}/bin/
cp -rv ${ORIGIN_DIR}/virt-convert  ${TOP_DIR}/bin/
cp -rv ${ORIGIN_DIR}/virt-install  ${TOP_DIR}/bin/
cp -rv ${ORIGIN_DIR}/virt-xml      ${TOP_DIR}/bin/

cp -rv ${ORIGIN_DIR}/virtManager   ${TOP_DIR}/
cp -rv ${ORIGIN_DIR}/virtcli       ${TOP_DIR}/
cp -rv ${ORIGIN_DIR}/virtconv      ${TOP_DIR}/
cp -rv ${ORIGIN_DIR}/virtinst      ${TOP_DIR}/
