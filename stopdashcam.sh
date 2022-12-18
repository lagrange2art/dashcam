#!/bin/bash
echo "Stopped at: $(date)" >> dashcam.log

sudo systemctl stop dashcam.service
