---
layout: post
title: Email on ZFS Failures
date: 2022-03-21T19:40:38.215Z
published: true
category: homeserver
tags:
  - ZFS
  - linux
  - homeserver
excerpt: Cron job to check for failed disks
---
{%- include basepaths.html -%}

{% include toc.html %}

Make sure that email is setup for `root` user. We will run a daily cron job to verify the state of all Zpools.

Run the following (bash shell):

```
echo "\
#!/bin/sh
#
# Email if any ZFS pools are in DEGRADED state.
# '|| true' ensures zero status code when grep finds no matches.

( /sbin/zpool status | egrep 'DEGRADED|FAULTED' ) || true
" | sudo tee /etc/cron.daily/zpool-status >/dev/null

sudo chmod +x /etc/cron.daily/zpool-status

```