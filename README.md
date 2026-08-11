<!-- foundation:identity -->
# Beacon Signal

Marketing landing page for the Beacon SaaS product: hero, features, pricing tiers, FAQ, and an email signup that stores leads for follow-up.

- Site: https://beacon-signal.api.holode.xyz
- Support: support@beacon-signal.api.holode.xyz
<!-- /foundation:identity -->

## What this is

Marketing landing page for the Beacon SaaS product: hero, features, pricing tiers, FAQ, and an email signup that stores leads for follow-up.

## Main features

- **Visit landing page** — Public root shows hero, features, pricing tiers, FAQ for Beacon.
- **Email signup** — Visitor enters name + email; the lead is validated and stored.
- **Manage leads** — Operator views captured leads in the admin area.

## Core entities

- Lead

## Run locally

```bash
bundle install
bin/rails db:prepare
bin/dev
```

Requires Ruby, PostgreSQL, and the usual Rails toolchain. See `bin/setup` if present.

## Demo

Complete static marketing content (hero, six features, three pricing tiers, FAQ) plus a dedicated public Lead model with a few sample leads seeded so the operator can see capture working in the admin area.

## Deploy notes

Production `config.hosts` is derived from `domain` in `config/foundation.yml`. Keep that value aligned with the real host or every request will 403.
