#!/bin/bash

##### preparing for KUBERNETES ####






##### preparing for DOCKER ####


kubectl run red --restart=Never --image=adalimayeu/webapp-color --env="COLOR=red" --port=80 && kubectl run green --restart=Never --image=adalimayeu/webapp-color --env="COLOR=green" --port=80 && kubectl run yellow --restart=Never --image=adalimayeu/webapp-color --env="COLOR=yellow" --port=80

