#include "qrcodegen.h"

int get_buffer_len_for_version(int version) {
  return qrcodegen_BUFFER_LEN_FOR_VERSION(version);
}

int get_buffer_len_MAX() {
  return qrcodegen_BUFFER_LEN_MAX;
}

int get_qr_version_min() {
  return qrcodegen_VERSION_MIN;
}

int get_qr_version_max () {
  return qrcodegen_VERSION_MAX;
}
