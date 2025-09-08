---
title: Identity Lifecicle Management
date: '2023-07-16T18:20:00Z'
description: Identity Lifecicle Management
categories:
  - IAM
  - IGA
menus:
  main:
    parent: iga
---

## HR-Driven Identity Lifecycle

The HR department is the one that knows who is joining, who is leaving, who is
moving to another job within the company, who is on vacation, sick leave, parental
leave, etc. Their system should expose for each employee at least the name that
should be used for them within the company (might be diﬀerent from their legal
name, which is only required by HR to sign contracts), the start and end dates
(if applicable) of the contract, department, role, line manager, and absences.

Their database should be the source of truth for identities in the workforce.

Other sources of truth can exist, but there must be a good reason for the exception.

Furthermore, for such sources there needs to be an owner and at least one deputy
responsible for the identities, and the identities need to be marked as "untrusted"
and have a label with the source to help the Information Security team evaluate
any access requests to internal systems.

### Joiner, Mover, Leaver (JML)

### Automated Provisioning

The HR department can provide us with some information about employees, but it
is up to the Line Manager, with the help of the Asset Owners (and the Information
Security team when in doubt), to determine which roles to assign them for day-to-day
work (and it is preferable to use Profiles that aggregate access, e.g., a person
working on a project will need access to the relevant chat channels, project emails,
related services, etc.).

All access and communication channels necessary for people's daily work should be
granted according to their profiles during on-boarding, based on their employment
relationship, location, sub-company, department, their role in the teams, projects
to which they are assigned, etc.

The exclusive use of RBAC to grant people access to services and applications will
lead to a proliferation of roles that will quickly become unmanageable. My advice
is to use a Policy-Based approach in a Zero Trust architecture.

All administrative access must be granted using short just-in-time credentials
that needs approval.

The approval process can be automated for exceptional cases using policies (e.g.,
an on-call engineer needs to work on a service they are assigned to during an incident).

### Application Lifecycle Management (ALM)

It is not possible to automate access to applications without knowing whether the
application is in review, ready to be used or about to be decommissioned, who the
Asset Owner is, what roles can be assigned to users, etc.

All applications and services must reside in an Asset Catalog, be labeled with
the appropriate status and Information Assurance (IA) levels, and have assigned
Asset Owners (and deputies), Application Administrators, and Infrastructure
Administrators.

When selecting new applications and services, ensure that new systems have an
appropriate interface for automated provisioning, preferring systems with SAML,
SCIM, OpenID Connect, OAuth or at least appropriate API endpoints (or even better
a supported connector for your IGA. See [Evolveum Identity Connectors and Resources][evolveum-connectors]
as an example).

- Unified Endpoint Management (UEM) and Mobile Device Management (MDM)

[evolveum-connectors]: https://docs.evolveum.com/connectors/
