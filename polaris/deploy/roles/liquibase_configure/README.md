# cd-bootstrap

This role is used to perform the initial configuration when running ansible
directly, not from Jenkins. It uses variables which is found in a file that
matches the deployment target (e.g. DLVR, TEST, PRODUCTION).

One variable cdconf_target must be specified to identify the intended deployment
instance.

Originally created by QED Systems Inc.

The state of this role is: **In Development**


## Required variables

| variable | example | description |
| -------- | ------- | ----------- |
| `cdconf_target` | DLVR | Deployment target |
| `cd_version` | 6.0.0-SNAPSHOT | Component version |


