---
title: Identity Security
date: '2023-07-16T18:20:00Z'
description: Identity Security
categories: [IAM, IGA, Security]
tags: [IA, Confidentiality, Integrity]
menus:
  main:
    parent: iga
---

## Orphan Account Monitoring

It's important to find missing identity associations or assets assigned to
wrong identities (for example off-boarded employees).

Examples:

- An account is associated to an asset but is not assigned to any identity
  - All accounts should be associated with one (and only one ) identity.
  - If the system allow only one account (for example only one admin), access
    to that account should happen trough a system that keep track of all
    actions (see PAM and Just-in-time credentials).
  - If credentials to the account are shared it will be hard to know who
    performed an action.
- Asset role (for example Owner or Admistrator) assigned to an Identity that
  left the company
- Employee assigned to a line manager that transferred to a different department

## Adaptive Authentication

Varying authentication methods based on runtime evaluation of risk factors.

Examples:

- ask password confirmation and OTP when adding an admin
- ask OTP again for actions performed outside working hours

## Breach Management
