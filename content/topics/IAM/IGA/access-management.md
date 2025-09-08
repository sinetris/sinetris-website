---
title: Access Management
date: '2024-07-15T16:27:00Z'
description: Access Management
categories:
  - IGA
  - Security
tags:
  - Access Requests
  - Access Revocation
  - Provisioning
  - Deprovisioning
menus:
  main:
    parent: iga
---

## Why you need access management

Some important points are:

- It allows to properly document granted access history for auditing and security
  purposes
  - Who had access to a specific system, what kind of access, why, at any point
    in time
  - What did they access, when, and why (via integration with SIEM systems)
  - When they are doing operations on a system, this allow to check if they are
    allowed
- Monitor drifting between desired state and actual state and what caused it
- Keeping track of users accesses allow to better refine them
  - Did they had granted more access than needed for their work?
    > Grant them access based on principle of least privilege
  - Did many people with a common denominator request the same access?
    > Consider creating or extending a profile for a better onboarding experience
- Allow users or their line manager to request additional access to assets they
  might require outside their daily work (using Access Requests)
- Provide the ability for managers and asset owners to approve or deny access
  to resources
- Help ensure that there are no violations of security or compliance policies
  (e.g., Segregation of Duties)
- Revoke access in the event of compliance violations or security breaches

## When an access request is needed

People should not be required to make Access Requests for roles in assets
needed for their daily work!

All needed accesses and communication channels for their daily work should be
granted based on their profiles during on-boarding, based on working
relationship, location, sub-company, department, etc., and their role in teams
and projects they are assigned to (see Identity Lifecicle Management).

Access Requests should be the exception:

- for (relatively) short time accesses to roles not part of the employee profiles
- for accesses to systems with a limited number of licenses
- for granting Just-In-Time privileged access to critical assets
  > *Examples:*
  >
  > - Asset Administrators need to handle delicate cases where operations cannot
  >   be automated
  > - Information Security or Cyber Security need to manage a security breach

All Access Requests require a business justification.

## Access Management Lifecycle

Access management lifecycle consist of 3 main parts:

- request
- evaluation
- provisioning/deprovisioning

### Request

- **Access Request**
  - requested by the user that will use the access
  - requested for the user by their line manager
- **Access Revocation**
  - automated on Access Request expiration
  - requested by the user in case they don't need the access anymore
  - requested by the user line manager
  - requested for security reasons (by Information Security or Cyber Security)
- **Access Delegation**
  - current user request to delegate their access to the delegated user
  - requested by the user line manager
  > *Example:* someone going in vacation or parental leave

### Evaluation

Based on processes and policies from Business Process Management associated with
the assets.

- **Approve**
  - automated
    > *Examples:*
    >
    > - automatically grant read access to a test instance based on low
    >   levels of [Information Assurance](../ASSET_MANAGEMENT.md#information-assurance-ia)
    >   properties for the asset, and the interested party identity profiles
    > - automatically grant administrative privileges to an asset for an Asset
    >   Administrator on an OnCall shift during an incident on the asset

  - single to multiple approval required, based on evaluation of risk factor
    > *Typically involved:* Line Manager, Asset Owner
- **Deny**
  - manual
- **Flag as risk factor**
  > *Example:* violation of Segregation of Duty
  - Require manual Approve/Deny
    > *Typically involved:* Line Manager, Assets Owners, Information Security,
    > Risk Management

### Provisioning and Deprovisioning

- Automated
  > *Example:* full SCIM integration for provisioning and deprovisioning
- Partially-automated
  > *Examples:*
  >
  > - Provisioning on first login and manual deprovisioning
  > - Automated provisioning and deprovisioning access to the application, but
  >   roles for the user are managed manually inside the application
  >
- Manual
  > *Examples:*
  >
  > - Island Applications: tickets for the Asset Administrator to manually
  >   provision and/or deprovision the user
