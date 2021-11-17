---
layout: page
title: Résumé
permalink: /about/
published: true
---

<style type="text/css">
    .page h1 {
        text-align: center;
        padding: 0px;
        margin: 0px;
    }
    ul.exp {
        display: flex;
        justify-content: space-between;
        list-style: none;
        border-bottom: 1px solid lightgray;
        margin: 0px;
        padding-left: 0px;
    }
    .dates {
        margin-left: 2em;
        text-align: right;
        font-style: italic;
    }
    {{site.css_mobile}} {
        /* mobile view specific CSS */
    }
</style>

<!-- <a href="{{ site.baseurl }}/" class="site-avatar">
    <img style="max-width: 100%" src="{{ site.favicon.svg }}" />
</a> -->

---
**Links.**
[Curriculum Vitae \[PDF\]](https://resume.0xa.fun/cv-res.pdf)
• [Google Scholar](https://scholar.google.com/citations?user=NjtxVEoAAAAJ)
• [dblp](https://dblp.uni-trier.de/pid/154/9562.html)

---

## About me
I am a PhD candidate at [The Pennsylvania State University](https://www.psu.edu/) and part of the [SIIS lab](https://cybersecurity.psu.edu/). My research focuses in OS Kernel Security, specifically Linux. My advisor is [Trent Jaeger](http://trentjaeger.com/).

My research interests are in _Systems Security_ and _Operating Systems_.
Currently, I am working on collecting control-flow traces of user-space programs using Intel® Processor Trace.
My goal is to explore new metrics and techniques for system monitoring in order to defend against zero days.

## Education
<ul class="exp">
    <li><strong>PhD Student</strong> in
        <em>Computer Science</em>
    </li>
    <span class="dates">(exp.) May 2022</span>
</ul>
at <a href="https://www.psu.edu/">The Pennsylvania State University</a>, PA, USA.
<br/>
GPA = 3.85 (of 4)

<ul class="exp">
    <li><strong>B.Tech.</strong> in
        <em>Information and Communication Technology</em>
    </li>
    <span class="dates">2014</span>
</ul>
from <a href="https://www.daiict.ac.in">Dhirubhai Ambani Institute</a>, Gujarat, India.
<br/>
GPA = 9.52 (of 10) in major; 8.55 overall

<p></p>

## Publications

2020
:   **Automatic Generation of Compact Printable Shellcodes for x86**<br/>
    Dhrumil Patel, _Aditya Basu_, Anish Mathuria.
    In _14<sup>th</sup> USENIX Workshop on Offensive Technologies (WOOT)_.<br/>
    <small>[
        [link](https://www.usenix.org/conference/woot20/presentation/patel)
        | [ppt](https://www.usenix.org/system/files/woot20-paper17-slides-basu.pdf)
        | [code](https://github.com/dhrumil29699/Printable-Encoder/)
        | acceptance rate = 33.33%, or 12/36
    ]</small>

2020
:   **Hardware Assisted Buffer Protection Mechanisms for Embedded RISC-V**<br/>
    Asmit De, _Aditya Basu_, Swaroop Ghosh, Trent Jaeger.
    In _IEEE Transactions on Computer-Aided Design of Integrated Circuits and Systems_.<br/>
    <small>[
        [doi](http://dx.doi.org/10.1109/TCAD.2020.2984407)
        | impact factor = 2.168
    ]</small>

2019
:   **FIXER: Flow Integrity Extensions in Embedded RISC-V**<br/>
    Asmit De, _Aditya Basu_, Swaroop Ghosh and Trent Jaeger.
    In _Proceedings of Design, Automation and Test in Europe (DATE)_.<br/>
    <small>[
        [doi](http://dx.doi.org/10.23919/DATE.2019.8714980)
        | acceptance rate = 24%
    ]</small>

2014
:   **Automatic Generation of Compact Alphanumeric Shellcodes for x86**<br/>
    _Aditya Basu_, Anish Mathuria, Nagendra Chowdary.
    In Proceedings of 10<sup>th</sup> International Conference on Information Systems Security (ICISS).<br/>
    <small>[
        [doi](http://dx.doi.org/10.1007/978-3-319-13841-1_22)
        | <a href="{{site.assets}}/research/alpha-x86-ppt.pdf">ppt</a>
        | [code](https://bitbucket.org/mitthu/alpha_loaders/src)
        | acceptance rate = 19%, or 25/129
    ]</small>


## Career

<ul class="exp">
    <li><strong>Software Engineering Intern</strong> at
        <a href="https://careers.google.com/locations/cambridge/">Google, Cambridge (USA)</a>
    </li>
    <span class="dates">Summer 2019</span>
</ul>

* Added support for _Intel VT-d_ to the [Akaros kernel](http://akaros.org/overview.html) from UC Berkeley.
* This allows any PCI/PCIe device to be placed in the address space of a process or a VM.
* Also wrote a driver for Intel CBDMA (DMA accelerator on Intel, a.k.a IOAT). The driver was used to test the VT-d support.
<br/>
<small>[
    [my commits](https://github.com/brho/akaros/commits?author=mitthu)
    | language: C
]</small>

<ul class="exp">
    <li><strong>Research Intern</strong> at
        <a href="https://www.nio.com/about">NIO, San Jose</a>
    </li>
    <span class="dates">Summer 2018</span>
</ul>

* Worked on securing and pen-testing the ES8's (SUV) firmware and
OBD-II diagnostics port.
* Additionally, I wrote a driver for an on-board network switch and created patches to fix the discovered vulnerabilities.
<br/>
<small>[
    languages: C, Python
]</small>

<ul class="exp">
    <li><strong>System Operations Engineer</strong> at
        <a href="http://www.media.net/">Media.net, Mumbai</a>
    </li>
    <span class="dates">2014-16</span>
</ul>

* Automated and managed their web crawling infrastructure that served
\>100 million requests/day.
* Helped with campus recruiting efforts.
* For new employees, I took training sessions on _Advanced Linux_ and _Networking_.
<br/>
<small>[
    tools: Bash, Puppet, Ansible, AWS automation
    | languages: C, Python, Java
]</small>

<ul class="exp">
    <li><strong>Software Developer Intern</strong> at
        <a href="https://www.daiict.ac.in">Dhirubhai Ambani Institute, Ahmedabad</a>
    </li>
    <span class="dates">Summer '13 & '14</span>
</ul>

* Single-handedly created the admission portal for the university.
* The portal is capable of generating merit-lists and wait-lists of candidates based on their stream preferences and test scores.
* The portal also handles all emails communications, and provides a unified web interface for both the candidates & the admissions team.
<br/>
<small>[
    frameworks: Django
    | languages: Python, HTML, CSS, JavaScript
]</small>
<p></p>

## Skills

\>10k SLOC
:   C •
    Python •
    bash •
    LaTeX (macros) •
    HTML

5k --- 10k SLOC
:   Django •
    Puppet •
    Ansible •
    Java •
    CSS

Utilities
:   make •
    git •
    Docker •
    strace •
    gdb

Others
:   Linux •
    Mac OS X •
    Markdown

<!--
**Some legal stuff.**
All content on this website are solely my opinions.
It does not represent my employer's opinions.
-->
