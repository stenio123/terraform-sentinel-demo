# Terraform Enterprise - Sentinel Demo

## Overview
Sentinel is used to enforce governance and best practice in deployments.

Example policies can be found here:

https://github.com/hashicorp/terraform-guides/blob/master/governance

For using Sentinel:
- Each policy is defined as an individual *.sentinel file
- A sentinel repository needs to have a sentinel.hcl file defining enforcement levels for each policy (advisory, soft-mandatory, hard-mandatory)
- The sentinel repository can be independent, or with a folder of another repository

Additional information: https://www.terraform.io/docs/cloud/sentinel/

## Demo
This repository includes a main.tf that can be used to illustrate a terraform enterprise workflow:

1. Create a workspace, pointing to this repository
2. Update workspace environment variables:
```
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
```
3. Create a Sentinel policy set, pointing to the /sentinel folder in this repository
4. Ensure the Sentinel Policy Set is pointing to all workspaces or to the new workspace
5. Queue a run, validate Sentinel errors
6. Update code and push to git repo
7. Validate no Sentinel errors