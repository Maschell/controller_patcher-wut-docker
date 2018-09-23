FROM wiiuwut/core:1.0.0-beta4

MAINTAINER Maschell <maschell@gmx.de>

RUN mkdir /artifacts

# Get dependencies
COPY --from=wiiuwut/libutils:0.1 /artifacts $WUT_ROOT

RUN git clone https://github.com/Maschell/controller_patcher -b wut && cd controller_patcher && git checkout fd70b257c6921294a8643d1f2c3d5c0175081844

RUN cd controller_patcher && mkdir build && cd build && \
	cmake -DCMAKE_TOOLCHAIN_FILE=$WUT_ROOT/share/wut.toolchain.cmake -DCMAKE_INSTALL_PREFIX=/artifacts ../  &&\
	make install

RUN rm -rf controller_patcher

WORKDIR /artifacts