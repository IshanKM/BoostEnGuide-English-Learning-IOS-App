/* This file was generated by upbc (the upb compiler) from the input
 * file:
 *
 *     udpa/annotations/versioning.proto
 *
 * Do not edit -- your changes will be discarded when the file is
 * regenerated. */

#include <stddef.h>
#include "upb/msg_internal.h"
#include "udpa/annotations/versioning.upb.h"
#include "google/protobuf/descriptor.upb.h"

#include "upb/port_def.inc"

static const upb_msglayout_field udpa_annotations_VersioningAnnotation__fields[1] = {
  {1, UPB_SIZE(0, 0), 0, 0, 9, _UPB_MODE_SCALAR | (_UPB_REP_STRVIEW << _UPB_REP_SHIFT)},
};

const upb_msglayout udpa_annotations_VersioningAnnotation_msginit = {
  NULL,
  &udpa_annotations_VersioningAnnotation__fields[0],
  UPB_SIZE(8, 16), 1, _UPB_MSGEXT_NONE, 1, 255,
};

static const upb_msglayout *messages_layout[1] = {
  &udpa_annotations_VersioningAnnotation_msginit,
};

extern const upb_msglayout google_protobuf_MessageOptions_msginit;
extern const upb_msglayout udpa_annotations_VersioningAnnotation_msginit;
const upb_msglayout_ext udpa_annotations_versioning_ext = {
  {7881811, 0, 0, 0, 11, _UPB_MODE_SCALAR | _UPB_MODE_IS_EXTENSION | (_UPB_REP_PTR << _UPB_REP_SHIFT)},
  &google_protobuf_MessageOptions_msginit,
  {.submsg = &udpa_annotations_VersioningAnnotation_msginit},

};

static const upb_msglayout_ext *extensions_layout[1] = {
  &udpa_annotations_versioning_ext,
};

const upb_msglayout_file udpa_annotations_versioning_proto_upb_file_layout = {
  messages_layout,
  extensions_layout,
  1,
  1,
};

#include "upb/port_undef.inc"
