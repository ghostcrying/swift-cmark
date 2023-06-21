#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "CAtomic.h"
#import "cmark_gfm.h"
#import "autolink.h"
#import "cmark-gfm-core-extensions.h"
#import "ext_scanners.h"
#import "strikethrough.h"
#import "table.h"
#import "tagfilter.h"
#import "tasklist.h"
#import "buffer.h"
#import "chunk.h"
#import "cmark-gfm-extension_api.h"
#import "cmark-gfm.h"
#import "cmark-gfm_config.h"
#import "cmark-gfm_version.h"
#import "cmark_ctype.h"
#import "export.h"
#import "footnotes.h"
#import "houdini.h"
#import "html.h"
#import "inlines.h"
#import "iterator.h"
#import "map.h"
#import "mutex.h"
#import "node.h"
#import "parser.h"
#import "plugin.h"
#import "references.h"
#import "registry.h"
#import "render.h"
#import "scanners.h"
#import "syntax_extension.h"
#import "utf8.h"

FOUNDATION_EXPORT double cmark_gfmVersionNumber;
FOUNDATION_EXPORT const unsigned char cmark_gfmVersionString[];

