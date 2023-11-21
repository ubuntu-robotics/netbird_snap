#!/usr/bin/bash

$SNAP/bin/netbird service run $(snapctl get service-run-arguments)
