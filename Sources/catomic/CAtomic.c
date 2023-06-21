#include <stdint.h>
#include "CAtomic.h"
#include "cmark-gfm-core-extensions.h"

static _Atomic uint64_t _cmarkup_unique_id = 0;

CMARK_GFM_EXPORT
uint64_t _cmarkup_current_unique_id(void) {
    return _cmarkup_unique_id;
}

CMARK_GFM_EXPORT
uint64_t _cmarkup_increment_and_get_unique_id(void) {
  return ++_cmarkup_unique_id;
}
