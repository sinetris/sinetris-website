---
title: IAM overview
date: '2024-06-28T10:15:50Z'
description: A pragmatic overview on Identity and Access Management
weight: 50
categories:
  - IAM
tags:
  - IAM
  - Documentation
cascade:
  menus:
    main:
      parent: iam
  params:
    tagline: A pragmatic overview on IAM
menus:
  main:
    identifier: iam
    parent: topics
---

{{< figure-wrapper >}}
This is a work in progress, and many concepts have been simplified for the
sake of conciseness, ease of access, and, to no small extent, for a lack of
omniscience on my part.
{{< /figure-wrapper >}}

## IAM Infratructure

Plan a flexible IAM architecture as a means of facilitating Governance,
Compliance, and Risk (GCR) management through the use of Governance as Code
and Policies as Code, for real-time, explicitly evaluated, adaptive trust
in a zero standing privileges and zero-trust architecture.

This document attempts to align requirements and perspectives of:

- Compliance and Risk Management
- Information Security
- HR department
- Information Technology
- Cyber Security

The Information Security team is often considered as part of Compliance and
Risk Management and the Cyber Security team as part of Information Technology,
but given their significant impact for an effective planning of projects built
around IAM, they have been included in the list as separate entities.

The implementation of a proper IAM infrastructure requires the involvement of
people from diﬀerent teams and departments. Underestimating the need to involve
all stakeholders at an early stage will lead to delays, waste of money and
resources, and poor adoption.

The following is an incomplete list of candidate stakeholders:

- Human Resources (HR)
- Governance, Risk management and Compliance (GRC)
  - Information Security (especially the CISO)
  - Data Protection Oﬃcer
  - Compliance Oﬃcers
  - Risk Management
  - Internal Auditors
  - Legal team
  - Financial risk
- Information Technology
  - CTO
  - Software Architects
  - Cyber Security
  - Site Reliability Engineering (SRE)
  - Platform
  - Business Application Owners
  - Engineering Managers

## Workforce IAM

- [HR-Driven Identity Lifecycle](/topics/iam/iga/identity-lifecicle-management/#hr-driven-identity-lifecycle)
- [Application Lifecycle Management (ALM)](/topics/iam/iga/identity-lifecicle-management/#application-lifecycle-management-alm)
  connected with the Asset Catalog
  - [Software Bill of Materials (SBOM)](https://www.cisa.gov/sbom)
- Automated Provisioning
  - Policy Based
  - Zero Trust Architecture
  - Services
  - line manager
  - Unified Endpoint Management (UEM) and Mobile Device Management (MDM)
  - License Management
- Procedure and Processes
  > Many procedures and processes will benefit from a well-built IAM infrastructure.
  > To name a few:
  >
  > - Business Continuity
  > - Disaster Recovery
  > - Internal Audits
