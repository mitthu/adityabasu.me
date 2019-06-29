---
layout: post
title: Quirks about PCI
tags: 
  - specifications
  - protocol
  - pci
---

{%- include basepaths.html -%}

The 64-bit PCI registers are broken up as in to two 32-bit registers.
For example,

	REGISTER is represented as
		REGISTER_1
		REGISTER_1
