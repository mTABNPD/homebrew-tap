# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Documentation

`/docs` is part of the deliverable, not a follow-up. Any PR that changes
observable behaviour must update `/docs` in the same PR.

Update the docs when a change affects any of:

- **Surface** — what this repo exposes to callers: module inputs/outputs,
  API endpoints, CLI commands and flags, config keys, event or queue contracts,
  exported functions and types
- **Topology** — components, environments, dependencies, and how they connect
- **Behaviour** — defaults, control flow, failure and retry semantics,
  scheduling, data lifecycle
- **Access** — permissions, authentication, network reachability, secrets
  handling
- **Operations** — how to build, deploy, run, and troubleshoot it

Refactors that change none of the above need no doc change.

### Never document version values

Docs must not state the *current* version of anything: container image tags,
chart versions, engine versions, Kubernetes versions, AMI IDs, package or
dependency versions, action pins, release numbers.

Document **where a version is defined and how it changes**, not what it is today:

- Wrong: `| dev | us-west-2 | 1.36 |`
- Right: `| dev | us-west-2 | version set in environments/dev/dev.tfvars |`

Version *constraints* are architectural and stay — `required_version >= 1.5`,
`aws ~> 5.0`, "requires engine 16.x or later".

A PR that only bumps a version needs no doc change. Do not add changelogs,
release notes, or "as of version X" phrasing to `/docs` — git history covers that.
