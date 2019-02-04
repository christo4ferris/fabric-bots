#!/bin/sh
# Copyright IBM Corp All Rights Reserved.
#
# SPDX-License-Identifier: Apache-2.0

user=`cat ./user`
ssh -p 29418 ${user}@gerrit.hyperledger.org gerrit review -m '"This CR has been dormant for more than 4 weeks. Per the Hyperledger Fabric CR Aging policy (https://hyperledger-fabric.readthedocs.io/en/latest/CONTRIBUTING.html#cr-aging), the CR is being automatically be abandoned. Abandoned CRs are preserved and can be restored at any time. Thank you."' $1

