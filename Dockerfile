FROM diuis/docker-emsdk-opencv3:v1.1.11

SHELL ["/bin/bash", "-c"]
RUN source /emsdk/juj-emsdk-7a0e274/emsdk_env.sh && \
    mkdir /home/appuser/opencv_wasm && \
    python /home/appuser/opencv/opencv-opencv-2b01723/platforms/js/build_js.py --build_wasm /home/appuser/opencv_wasm
