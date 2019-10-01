#!/bin/bash
clear
until $(kubectl get componentstatus >/dev/null 2>&1); do echo -n .; sleep 1; done; echo