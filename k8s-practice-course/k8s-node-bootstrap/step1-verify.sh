#!/bin/bash

[[ $(kubectl get nodes -o jsonpath='{.items[*].status.conditions[?(@.type=="Ready")].status}') == "True True" ]] &&
echo done