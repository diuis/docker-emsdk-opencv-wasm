FROM diuis/docker-emsdk-opencv3:v1.0.0

USER appuser
SHELL ["/bin/bash", "-c"]
RUN source /home/appuser/emsdk/emsdk_env.sh && \
    mkdir /home/appuser/opencv_wasm && \
    python /home/appuser/opencv/platforms/js/build_js.py --build_wasm /home/appuser/opencv_wasm
