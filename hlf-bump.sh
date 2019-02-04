#!/bin/sh

user=`cat ./user`
ssh -p 29418 ${user}@gerrit.hyperledger.org gerrit review -m '"This CR has been dormant for more than 2 weeks. Per the Hyperledger Fabric CR Aging policy (https://hyperledger-fabric.readthedocs.io/en/latest/CONTRIBUTING.html#cr-aging), please address review comments or abandon this CR. If not updated in two weeks, the CR will automatically be abandoned. Abandoned CRs are preserved and can be restored at any time. If this is a WIP or Draft CR, please stash a local copy and abandon the CR while you continue to work, to keep our CR backlog uncluttered. Thank you."' $1

