//
//  cmark_gfm.h
//  cmark-gfm
//
//  Created by ghost on 2023/6/21.
//

#import <Foundation/Foundation.h>

//! Project version number for Markdown.
FOUNDATION_EXPORT double MarkdownVersionNumber;

//! Project version string for Markdown.
FOUNDATION_EXPORT const unsigned char MarkdownVersionString[];

#ifndef cmark_gfm_h
#define cmark_gfm_h

#include "buffer.h"
#include "chunk.h"
#include "cmark_ctype.h"
#include "cmark-gfm_config.h"
#include "cmark-gfm_version.h"
#include "cmark-gfm-extension_api.h"
#include "cmark-gfm.h"
#include "export.h"
#include "footnotes.h"
#include "houdini.h"
#include "html.h"
#include "inlines.h"
#include "iterator.h"
#include "map.h"
#include "mutex.h"
#include "node.h"
#include "parser.h"
#include "plugin.h"
#include "references.h"
#include "registry.h"
#include "render.h"
#include "scanners.h"
#include "syntax_extension.h"
#include "utf8.h"

#include "cmark-gfm-core-extensions.h"
#include "autolink.h"
#include "ext_scanners.h"
#include "strikethrough.h"
#include "table.h"
#include "tagfilter.h"
#include "tasklist.h"

#include "CAtomic.h"

#endif /* cmark_gfm_h */
