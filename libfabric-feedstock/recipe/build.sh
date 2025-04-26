cp ib_user_verbs.h include/rdma/
#./configure --enable-sockets --enable-verbs --enable-usnic --disable-static --enable-psm --enable-psm2 --prefix=${PREFIX}
./autogen.sh
./configure --enable-verbs --prefix=${PREFIX}
${BUILD_PREFIX}/bin/make -j ${CPU_COUNT}
${BUILD_PREFIX}/bin/make install

