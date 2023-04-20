---
layout: post
title: Netlify naked domain invalid SSL cert.
published: true
excerpt_separator: <!--more-->
category: website
toc: false
tags: 
  - netlify
  - blog
---

{%- include basepaths.html -%}

Enforcing redirect rule from http to https and pointing the naked domain to Netlify's load balancer IP causes invalid cert. being served when accessing the naked domain. This post details the solution using redirect rules.

<!--more-->

Add the following redirect rule to the `_redirects` file to solve this issue:
```
# Redirect naked domain to www (https version)
http://adityabasu.me/* https://www.adityabasu.me/:splat 302!
```
