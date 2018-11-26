FROM diuis/docker-emsdk-opencv

RUN source /emsdk/emsdk_env.sh
RUN python /opencv/opencv-3.4.4/platforms/js/build_js.py build_wasm --build_wasm
