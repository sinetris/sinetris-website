---
title: Real-Time Computing
date: '2023-08-06T10:10:15Z'
description: |
  Used to describe a computer system that guarantee to process events and perform tasks within a specific time constraints.
params:
  context: tech
  synonyms:
    - reactive computing
  abbreviations:
    - RTC
  related:
    - real-time
    - real-time-os
---

## Description

Real-time computing, also known as reactive computing, is used to describe a computer system that guarantees the processing of inputs and the execution of tasks within specified time limits, often referred to as "deadlines".

We can divide real-time systems into three categories based on expectations:

- [soft real-time](#soft-real-time)
- [firm real-time](#firm-real-time)
- [hard real-time](#hard-real-time)

## soft real-time

The system continues to operate even if it's unable to perform operations within the allotted time.

## firm real-time

Deadlines are crucial, but occasional non-compliance is tolerable.

## hard real-time

Any missed deadline is considered a system failure.

> **Note:**\
> Mostly used in robotics and crucial applications, like nuclear plants, airline control.\
> Require specialized software and Operating System, and may require specialized hardware.
