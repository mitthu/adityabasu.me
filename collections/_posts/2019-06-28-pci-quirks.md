---
layout: post
title: Quirks about PCI
excerpt: Addressing 64-bit PCI registers.
category: Device Drivers
tags:
  - specifications
  - protocol
  - pci
---

{%- include basepaths.html -%}

> **tl;dr** Notes while working with PCI.

The 64-bit PCI registers are broken up as in to two 32-bit registers.
So,

	REGISTER is represented as
		REGISTER_1
		REGISTER_1
