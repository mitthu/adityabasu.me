---
layout: post
title: Versioning of LaTex based resume
published: true
excerpt_separator: <!--more-->
excerpt: Use the git SHA as the version for latex documents.
tags: 
  - git
  - latex
  - resume
---

{%- include basepaths.html -%}

I use "make" to compile my LaTeX documents. I have a repo for my resume here https://github.com/mitthu/resume. Whenever I made edits to my resume, my workflow used to be -
* Update my resume - can be a couple of commits.
* Tag the latest commit with an incrementing version number. I used to maintain a major and minor number, ex. v1.4.
* Push changes (and the tag).
* Make a release on GitHub for the relevant tag and upload the PDF.

The above steps detered me from making changes to my resume which has been counter-porductive. So I decided to go for rolling release. For version numbers I decided to use the short version of the git commit SHA-1. I also added the commit date to the version. This seemed better than automatically adding the build date. That way I can build multiple times and still retain appropriate dates.

Another advantage is that even if I were to give a specific version to someone, I can always ask for the commit SHA. That way I can always recover the specifc version that person has.

Without delaying much, my setup is as follows. I added the following new recipie to my Makefile.

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
dt. 2019-06-09 || ver. 34b340c
```

Inside LaTeX, use the following snippet:

```latex
\input|"make version"
```

Now for the above command to work, I needed to add the `--shell-escape` flag to the LaTex command. So to compile I used -
```bash
# pdflatex
pdflatex --shell-escape resume.tex

# xelatex
xelatex --shell-escape resume.tex
```

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

Things that didn't work:
```latex
% Store the command output in a temporary file
\immediate\write18{git log --date=short --format="dt. %ad || ver. %h" -n 1 >gitcommit.tex}

% Use the output
\input{gitcommit.tex}

% Remove the temporary file
\immediate\write18{rm gitcommit.tex}
```