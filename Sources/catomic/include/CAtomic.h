#ifndef CMARK_GFM_CATOMIC_H
#define CMARK_GFM_CATOMIC_H

#include <stdint.h>

/// The current unique atomic identifier.
uint64_t _cmarkup_current_unique_id(void);

/// Increment the current unique identifier atomically and return it.
uint64_t _cmarkup_increment_and_get_unique_id(void);

#endif
