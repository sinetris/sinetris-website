---
title: Disaster Recovery
date: '2025-03-17T10:53:28Z'
weight: 40
categories:
  - GRC
tags:
  - Disaster Recovery
  - Business Continuity
  - Compliance
menus:
  main:
    parent: GRC
---

### Have a Plan B for disaster recovery

During a disaster recovery you want to be fast to respect your
{{< glossary-term term="recovery-time-objective" >}}.

It is possible, for example, to restore the operation of a service using snapshots
(both volumes and instances).

Restoring snapshots may fail for unforeseen reasons (e.g., you need to restore
the service on a different cloud provider), so you should make sure that
you can restore from scratch (ability to recreate the service, use database dump,
etc.).

This could take longer and may lead to non-compliance with your RTO, but it's
still preferable to be able to restore with a slight delay (resulting in payment
of a penalty or customers being given discounts) rather than not being able to
recover the system at all.
