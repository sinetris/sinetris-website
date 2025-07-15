---
title: Business Continuity and Disaster Recovery
date: '2025-03-17T10:53:28Z'
weight: 40
categories:
  - IAM
  - GRC
tags:
  - Disaster Recovery
  - Business Continuity
  - Compliance
  - GRC
menus:
  main:
    parent: compliance
---

### Have a Plan B for disaster recovery

During a disaster recovery you want to be fast to respect RTO.

You can, for example, recover operation using snapshots (both volumes and
instances).

Snapshots restoration can fail if the target system changed (different version,
different setup, etc) so you also want to ensure to be able to restore from
scratch.
This operation will take more time and you could miss your RTO, but
still better to be able to recover operation with a little overtime (maybe paying
a fee and giving discounts to your customers) than not being able to do it.
