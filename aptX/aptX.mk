APTX_DIR := vendor/XiaomiCustom/aptX

PRODUCT_COPY_FILES += \
    $(APTX_DIR)/lib64/libaptXHD_encoder.so:system/lib64/libaptXHD_encoder.so \
    $(APTX_DIR)/lib64/libaptX_encoder.so:system/lib64/libaptX_encoder.so
