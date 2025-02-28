---
title: Jonathan Hartley résumé
geometry: margin=1cm
output: pdf_document
---

| Jonathan Hartley | [tartley@tartley.com][email] | [blog][blog] | [github][github] | +1 507 513 1101
| 1601 5th Ave NW. Rochester, MN, 55901, USA | Central, ie. UTC-6

[email]: mailto:tartley@tartley.com
[blog]: https://www.tartley.com/tags/software
[github]: https://github.com/tartley

## Summary

I'm an experienced software developer, a back-end generalist, specializing in Python, who
really cares about programming. For you, this means that I create products that work, are well
tested, and are less expensive to maintain and extend in the future. Deliveries are incremental and
frequent, to make progress legible to all.

Good teams are a pre-requisite for this, which means continuous mentoring, pairing, jovial
relationships, real talk, and pride in our mutually raised expectations of one another.

## Experience and technologies

I have 15 years experience in **Python** (and have used Go, C, C#, C++). I created
[Colorama](https://pypi.python.org/pypi/colorama), a personal **open source** project that has
become the world's [28th most popular](https://hugovk.github.io/top-pypi-packages/#colorama) Python
library. I present at PyCon and am a Fellow of the Python Software Foundation.

I work on **Linux**, often producing **web APIs** which use
**Django**, **FastAPI**, or **Flask**, checked by typing and Pydantic,
interfacing with back ends such as **SQL**/relational storage like **PostgreSQL**,
Oracle, MySQL, or NoSQL stores like Redis, indexed using Elasticsearch, containerized
using LXC or Docker, deployed to bare metal or public clouds.

I consult and mentor in **Test-Driven Development (TDD)**, and my favorite employers use
this and other other **Agile** and **eXtreme Programming** techniques.
I was tech reviewer on O'Reilly's [Test Driven Development with
Python](https://www.oreilly.com/library/view/test-driven-development-with/9781491958698), published
on testing [in Python
Magazine](https://www.tartley.com/posts/acceptance-testing-net-applications-using-ironpython), and
landed modest CPython patches [in
unittest](https://github.com/python/cpython/commit/1341bb0019868345bab8adff94263c81e1d66eae#diff-d1243956feb505c5459fc05387e194609efb5c350cee202942be47ed30d7d7d0R354).

## Current Role

------------- ---------------------------------------------------------------------------------
**Lambda**\   Lambda's public cloud provides premier GPUs, on which customers
*Sep 2023*\   train AI models. My team converts customer requests and
*to present.* other events into configuration changes on hypervisors to manage virtual
              machines, network configuration, GPUs and storage, presenting the
              result to users as their own private cluster.

              I analyze & deliver new features. One is our first on-hypervisor agent, deployed
              on bare metal to thousands of hypervisors in multiple datacenters. To this I migrated
              our server health checks, from our centralized Python FastAPI command-and-control
              service, allowing the checks to become substantially simpler, having more direct
              access to the hypervisor's state.

              I then worked with others to migrate our primary and most involved workflow, launching
              VMs. This made the code more scalable and responsive, and especially more reliable
              than micro-managing many hypervisors from afar with low-level commands over ssh.
              This eliminated whole classes of errors & races, improving user experience
              and reducing on-call burden, important as we grow the fleet.

              To support the company's builds of High Performance Computing clusters for clients, I
              produced a parameterizable Python model of proposed clusters, including servers,
              switches, and the routing of networking connections between them. Exporting the
              resulting model as detailed diagrams, bills of material, etc, allowed Pre-Sales
              Engineering to use these documents during sales pitches, and produce quotes on-demand,
              rather than after weeks of design work, as has been industry standard.

------------- ---------------------------------------------------------------------------------

\newpage

## Previous Roles

------------------ ---------------------------------------------------------------------------------
**Canonical**\     The [*Snap Store*](https://snapcraft.io/store) is an app
*May 2019 to*\     store for Linux applications. I worked on the backend Python Django web APIs,
*July 2023*\       serving 5k req/s to provide downloads to securely update hundreds of millions of
                   Linux devices. One effort that I lead consolidated code from the company's other
                   types of binary downloadable artifacts to all be handled by the Snap Store,
                   replacing several separate services with a single "binary artifact store",
                   decommissioning other teams' services as their functionality was
                   subsumed, and converging behaviors such as publishing and risk tracks to be more
                   consistent across artifact types, all while honoring high-traffic SLAs &
                   preserving compatibility with diverse public APIs for each artifact type.

**IBM Cloud**\     Implemented IBM Cloud's
*July 2017 to*\    [*security groups*](https://www.tartley.com/posts/illustrating-uses-of-ibm-cloud-security-groups/)
*May 2019*         feature, in Python & Go, taking the best of AWS and GCP designs, to
                   convert user requests into iptables config across
                   many instances, for dynamic on-instance firewalling. I also produced &
                   presented my own training course across the division, teaching hundreds of developers
                   how to contribute *good* tests to the massive IBM Cloud Python test suite,
                   dramatically reducing time spent on creating and maintaining tests, while making
                   the tests themselves orders of magnitude faster, more thorough, and
                   more reliable.

**Able.ag,**\      Often as a tech lead, such as at *Able.ag*, where I relieved the company's
**Antidote.me,**\  technical founder of architectural, design, and mentoring responsibilities.
**Made.com,**\     Usually these roles created web APIs in Python, ingesting, transforming and
**BATS Trading,**\ indexing large amounts of data, often to AWS RDS. At e-commerce startup
**Rangespan**\     *Rangespan*, we integrated with hundreds of suppliers, to ingest data for 100
*Contracts,*\      million product lines, and then routed over a billion sales from participating retailers
*June 2017 to*\    to dynamically selected suppliers.
*June 2011*        At furniture retailer *made.com*, I was hired to fix the dysfunctional Enterprise
                   Resource Planning team, which was moribund from years of technical debt. I
                   mentored individual team members, hired some new ones, and replaced the
                   week-long manual deploy process with modern CI/CD. Together we then radically
                   overhauled the team's processes and codebase, allowing the team to start
                   delivering business-critical features to production.

**Resolver**\      Hardcore eXtreme Programming startup, doing pairing and TDD, producing
**Systems**\       Python and .Net applications for financial and scientific clients.
*Sep 2006 to*\     At one point I helped re-implement all of Excel's statistical functions, with
*May 2011*         modern twists such as improved numerical accuracy.

**GIS**\           I single-handedly designed and
**consulting**\    coded *Habitat Capture*, a desktop GIS tool in .Net using
*Aug 2003 to*\     ArcObjects. End users described it as "*about a billion times better*" than their
*Sep 2006*         last commissioned tool. The dataset they produced with my tool ended up winning
                   that year's British Cartographic Society award. For *Ordinance Survey* I
                   designed spatial SQL queries to run against the UK's definitive multi-terabyte
                   geographic dataset, as a proof-of-concept to derive new sellable data products.

------------------ ---------------------------------------------------------------------------------

## Education

| University of Durham (United Kingdom). Bachelor of Science: 2:1 (with Honors) in Electronics.

