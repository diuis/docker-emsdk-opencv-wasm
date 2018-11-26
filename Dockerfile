FROM diuis/docker-emsdk-opencv

USER root
RUN mkdir /opencv_wasm && chown appuser /opencv_wasm
RUN mkdir /tmp/opencv_wasm/ && chown appuser /tmp/opencv_wasm/

USER appuser
RUN source /emsdk/emsdk_env.sh && \
    python /opencv/opencv-3.4.4/platforms/js/build_js.py /tmp/opencv_wasm/ --build_wasm
