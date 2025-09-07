---
title: SSL-Passthrough
slug: ssl-passthrough
date: '2025-07-02T07:50:28Z'
description: |
  The load balancer passes the encrypted traffic to the destination (e.g. backend
  instances) without decrypting it.

  Because the load balancer only sees encrypted traffic, it is not possible to
  perform layer 7 (OSI model) actions.
params:
  contexts:
    - Tech
    - Networking
  synonyms:
    - SSL/TLS Passthrough
    - TLS Passthrough
  related:
    - ssl-termination
    - ssl-bridging
---
