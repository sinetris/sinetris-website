---
title: SSL-Passthrough
slug: ssl-passthrough
date: '2025-07-02T07:50:28Z'
description: |
  The load balancer passes the encrypted traffic to the backend servers without
  decrypting it.

  Because the load balancer only sees encrypted traffic, it is not possible to
  perform layer 7 (OSI model) actions.
params:
  context: tech
  synonyms:
    - SSL/TLS Passthrough
    - TLS Passthrough
  related:
    - ssl-termination
    - ssl-bridging
---
