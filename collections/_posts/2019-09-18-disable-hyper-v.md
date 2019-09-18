---
layout: post
title: Disable Hyper-V
excerpt_separator: <!--more-->
tags: 
  - windows
  - vms
  - virtualbox
  - hyper-v
  - wsl
---

{%- include basepaths.html -%}

Running 64-bit VirtualBox 6.0 VMs with Hyper-V does not work yet. So one possible solution is to turn off Hyper-V. However turning off Hyper-V from "Turn Windows Features On or Off" does not completely turn off Hyper-V.

<!--more-->

## VirtualBox Logs
The following logs represent the problem -
```
...
00:00:02.401079 NEM: Adjusting APIC configuration from X2APIC to APIC max mode.  X2APIC is not supported by the WinHvPlatform API!
00:00:02.401084 NEM: Disable Hyper-V if you need X2APIC for your guests!
00:00:02.401180 NEM: NEMR3Init: Active.
00:00:02.401218 MM: cbHyperHeap=0x140000 (1310720)
00:00:02.401801 CPUM: No hardware-virtualization capability detected
...
00:00:02.405504 VMSetError: F:\tinderbox\win-6.0\src\VBox\VMM\VMMR3\NEMR3Native-win.cpp(1463) int __cdecl nemR3NativeInitAfterCPUM(struct VM *); rc=VERR_NEM_VM_CREATE_FAILED
00:00:02.405534 VMSetError: Call to WHvSetupPartition failed: ERROR_SUCCESS (Last=0xc000000d/87)
00:00:02.405558 NEM: Destroying partition 0000000001763a60 with its 0 VCpus...
00:00:02.533155 ERROR [COM]: aRC=E_FAIL (0x80004005) aIID={872da645-4a9b-1727-bee2-5585105b9eed} aComponent={ConsoleWrap} aText={Call to WHvSetupPartition failed: ERROR_SUCCESS (Last=0xc000000d/87) (VERR_NEM_VM_CREATE_FAILED)}, preserve=false aResultDetail=-6805
00:00:02.533347 Console: Machine state changed to 'PoweredOff'
00:00:02.540651 Power up failed (vrc=VERR_NEM_VM_CREATE_FAILED, rc=E_FAIL (0X80004005))
...
```

## Fix
To disable Hyper-V during boot, run the following in cmd.exe (Administrator) -
```shell
bcdedit /set hypervisorlaunchtype off
```

Note that **WSL 2.0** relies on Hyper-V. So it will likely not work.

<!--
	Backlinks:
	* https://news.ycombinator.com/item?id=19843596
 -->
