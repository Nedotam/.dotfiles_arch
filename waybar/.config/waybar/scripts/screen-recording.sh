#!/bin/bash
if [ -f /tmp/hypr-recording-active ]; then
  echo '{"text": "", "class": "active", "tooltip": "Screen recording active"}'
else
  echo '{"text": "", "class": "inactive"}'
fi
