#! /bin/sh

INSTALL_PATH="`pwd`/../../build/module/libcli"

if [ -d ${INSTALL_PATH} ]; then
	rm -fr ${INSTALL_PATH}
fi

mkdir -p ${INSTALL_PATH}

if [ -d libcli-build ]; then
	rm -fr libcli-build
fi

mkdir libcli-build
make
make install
cp -fr libcli-build/* ${INSTALL_PATH}

export LIBRARY_PATH=${INSTALL_PATH}/lib:$LIBRARY_PATH
export C_INCLUDE_PATH=${INSTALL_PATH}/include:$C_INCLUDE_PATH