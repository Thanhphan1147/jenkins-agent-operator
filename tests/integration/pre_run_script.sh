#!/bin/bash

# Copyright 2024 Canonical Ltd.
# See LICENSE file for licensing details.

# Pre-run script for integration test operator-workflows action.
# https://github.com/canonical/operator-workflows/blob/main/.github/workflows/integration_test.yaml

# Jenkins machine agent charm is deployed on lxd and Jenkins-k8s server charm is deployed on
# microk8s.

sg microk8s -c "microk8s status --wait-ready"
# lxd should be installed and inited by a previous step in integration test action.
echo "bootstrapping lxd juju controller"
sg microk8s -c "juju bootstrap localhost localhost"

echo "bootstrapping secondary microk8s controller"
sg microk8s -c "juju bootstrap microk8s controller"

echo "Switching to testing model"
sg microk8s -c "juju switch localhost"
