#!/bin/bash
if pgrep -x wf-recorder >/dev/null; then
  echo '{"text": "", "class": "active", "tooltip": "Screen recording active"}'
else
  echo '{"text": "", "class": "inactive"}'
fi
