FROM diuis/docker-emsdk-opencv3:v1.2.0

USER appuser
SHELL ["/bin/bash", "-c"]
RUN source /emsdk/juj-emsdk-7a0e274/emsdk_env.sh && \
    mkdir /home/appuser/opencv_wasm && \
    python /home/appuser/opencv/platforms/js/build_js.py --build_wasm /home/appuser/opencv_wasm
