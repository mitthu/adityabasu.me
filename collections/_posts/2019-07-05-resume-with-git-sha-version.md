---
layout: post
title: Versioning Resume (& LaTeX docs) using Git SHA
excerpt: Tagging resume using version numbers derived from git commit SHA. This helps in quickly retrieving any specific version of the resume. Also storing old PDF copies of the resume is not necessary.
tags: 
  - git
  - latex
  - resume
---

{%- include basepaths.html -%}

> **tl;dr** Tagging resume using version numbers derived from git commit SHA. This helps in quickly retrieving any specific version of the resume. Also storing old PDF copies of the resume is not necessary.

{% include toc.html %}

## Workflow

My resume is typeset using LaTeX and revision controlled under `git`. There is a `Makefile` in the root directory to take care of compiling the resume and producing the final PDF. My old resume editing workflow is roughly -

* Update my resume (comprises of a couple of commits).
* Tag the latest commit with an incrementing [semantic version number](https://semver.org/). I used to maintain a major and minor release number, ex. v1.4.
* Push the updates to GitHub.
* Make a release on GitHub for the relevant tag and upload the a PDF version for that release.

**So why maintain a version number?** Simply put it helps me retrieve the exact copy of my resume that someone else has. And there is no need to store every PDF version of my resume.

**However semantic versioning has issues!** They are pretty useful in general, but they introduce quite a bit of overhead. My main dislike for them stems from the manual version increments that are necessary, esp. when doing just some minor updates.

**The alternative.** A rolling release with version numbers that correspond to the abbrev (or shortened) git commit SHA. The extra thing I add on top is the **commit date**. This helps my human brain quickly identify the latest version. The **build date** can also be used but it changes every time the resume gets recompiled. So my preference is the **commit date**.

**Benefit.** Now every time someone has a question regarding my resume, I simply get the abbrev SHA version. Now both of us are looking at the exact same copy of the resume!

## My Setup

### Step 1 - Update Makefile
I have the following recipe in my Makefile.

```make
# $ man git-log
#	%h:  abbreviated commit hash
#	%ad: author date (format respects --date= option)

.PHONY: version
version:
	@git log --date=short --format="dt. %ad || ver. %h" -n 1
```

Example output:
```bash
$ make version
dt. 2019-07-02 || ver. 53267a4
```

### Step 2 - Update LaTeX source

Inside my LaTeX document, the following snippet embeds the output of the above command.

```latex
\input|"make  --silent version"
```

### Step 3 - Tweak LaTeX command-line flags

Now for the above command to work, the `--shell-escape` flag needs to be passed to `pdflatex`. The compilation command looks like -
```bash
# pdflatex
pdflatex --shell-escape resume.tex

# xelatex
xelatex --shell-escape resume.tex
```

### Wrapping up

My entire Makefile:
```make
SRC=resume.tex
TARGET=resume.pdf

$TARGET: *.tex *.cls
	xelatex --shell-escape ${SRC}
	open ${TARGET}

.PHONY: version
version:
	@git log --date=short --format="dt. %ad || ver. %h" -n 1

.PHONY: clean
clean:
	rm -rf *.aux *.log *.out *.synctex.gz ${TARGET}
```

These are all the steps needed to get a rolling release. The final document looks like -

![Resume stamped with a release version]({{site.asset.post}}/20190705-resume.png)

**One important point** is that any changes made to the resume need to be **committed first**. Otherwise the resume will get marked with an older (and incorrect) version number.

## Bonus
Alternatively, a TeX only approach looks like -

```latex
% Store the command output in a temporary file
\immediate\write18{git log --date=short --format="dt. %ad || ver. %h" -n 1 >gitcommit.tex}

% Use the output
\input{gitcommit.tex}

% Remove the temporary file
\immediate\write18{rm gitcommit.tex}
```
