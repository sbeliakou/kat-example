#!/bin/bash

[[ $(kubeadm token list | grep -c fedcba.fedcba9876543210) -eq 1 ]]
