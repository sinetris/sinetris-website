---
title: Segregation of Duties
date: '2025-09-04T12:33:22Z'
description: |
  Mechanism designed to prevent errors and fraud by dividing the actions required
  to complete a task among different employees.
params:
  contexts:
    - IAM
    - GRC
  synonyms:
    - Separation of Duties
  abbreviations:
    - SoD
  related:
    - principle-of-least-privilege
  externalResources:
    - title: What is Segregation of Duties?
      source: OpenIAM
      link: https://www.openiam.com/what-is-segregation-of-duties
---

## Description

Segregation of Duties (SoD) is a mechanism designed to prevent the risks of errors
and fraudulent behavior by dividing the actions required to complete a task among
different employees.

### Examples

- To prevent financial fraud: the person approving an invoice cannot be the same
  person who issued it.
  > **Reason:** they could potentially approve and pay fraudulent invoices to
  themselves or a fictitious supplier.
- To prevent both fraud and errors: the software engineer that approve code changes
  to critical assets cannot be the same person who submitted the changes.
  > **Reason:** they could miss mistakes made by them (prevent errors) or abuse the
  system to their own advantage (prevent fraud).
- To prevent fraud: the person who committed a [SoD violation](#segregation-of-duties-violations)
  cannot be the only person assessing the violation or the person closing it.
  > **Reason:** they could lie in the assessment or ignore it.
- To prevent errors: the person who closes a SoD violation assessment cannot also
  be the only person who assessed the violation.
  > **Reason:** they may fail to detect errors made in the assessment.

### Segregation of Duties violations

Segregation of Duties is best managed as a preventive control. When this is not
feasible, use detective controls to handle Segregation of Duty violations.

Some common statuses used to track SoD violations and indicate their
remediation progress are:

- Open
  > A violation has been detected and is awaiting action.
  - New
    > The detected violation is awaiting to be assigned to someone or
    was assigned automatically.
  - Assessment In Progress
    > The assigned person is assessing the violation.
  - To be Reviewed
    > The previously assigned person has written an assessment that needs to be
    reviewed.
    >
    > **Note:** When moving to this status, it's good practice to automatically
    assign someone else (when possible) or, at the very least, remove the
    previously assigned person.
  - Under Review
    > The assessment is under review.
- Closed
  > The violation has been resolved, is no longer relevant, or was a false
  positive (in which case policies and guidelines may need to be revised).
  - Risk Accepted
    > The organization acknowledges the violation but chooses to accept the risk.
  - Remediated
    > Specific corrective actions have been implemented to mitigate the risk.
  - False positive
    > There was no violation.
