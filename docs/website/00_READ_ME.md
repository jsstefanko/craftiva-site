# Craftiva.Studio Website Build Packet

**Version:** 0.1 draft  
**Date:** 6 September 2026  
**Purpose:** Planning and implementation source of truth for the Craftiva direct-to-consumer website revision.

## What this packet does

This packet translates the current Craftiva website concept into material that can be reviewed by the owners and then used by Codex to design and build the revised site.

It intentionally separates:

- confirmed decisions;
- proposed design and structure;
- factual product information;
- information still requiring an owner decision; and
- future implementation and launch checks.

No website code or live-site configuration is changed by this packet.

## Document order

1. `01_WEBSITE_BRIEF.md` — business goal, audience, brand direction, scope, and technical approach.
2. `02_PRODUCT_AND_MERCHANDISING.md` — product facts, availability states, and display rules.
3. `03_INFORMATION_ARCHITECTURE_AND_CONTENT.md` — sitemap, navigation, page purposes, and draft content structure.
4. `04_PHOTOGRAPHY_AND_ASSETS.md` — source inventory, photography rules, required images, and selection process.
5. `05_COMMERCE_AND_OPERATIONS.md` — Square checkout, shipping, fulfillment, inventory, domains, and order handling.
6. `06_QA_AND_LAUNCH.md` — issue tracking, acceptance criteria, and launch checklist.
7. `07_OPEN_DECISIONS.md` — consolidated list of matters still requiring an owner decision or confirmation.
8. `AGENTS_FOR_WEBSITE_REPO.md` — proposed permanent instructions for Codex when work begins in the actual website repository.

Two CSV templates are included:

- `photo_manifest_template.csv`
- `website_issue_log_template.csv`

Two Square-generated reference snippets are included:

- `square_p01_buy_button_reference.html` — P01 code supplied by Square, retained for reference only.
- `square_p02_buy_button_reference.html` — P02 code supplied by Square, retained for reference only; the production site should use its own Craftiva-styled purchase control after commerce approval.

## Authority and precedence

For the website revision, use sources in this order:

1. Owner decisions recorded in this packet after review.
2. Current Square catalog data for available products.
3. Current, approved product specifications and policies.
4. Existing Craftiva brand and product documents.
5. The February 2026 website brief and current live site as historical references.
6. The blueprint concept image as visual inspiration only.

The September 2026 direct-sales decisions supersede the old assumption that the website is only a credibility site pointing customers to Amazon.

## Review method

Review `07_OPEN_DECISIONS.md` first. Decisions made there should then be incorporated into the relevant detailed document. The packet supports two implementation gates.

### Gate A — non-transactional design preview

The initial site build may begin when:

- product facts and public statuses are approved;
- page structure is approved;
- stable image slots and aspect ratios are defined; and
- provisional images or ratio-matched placeholders are available.

Square links, final photography, customer policies, and launch approval do not block Gate A. The preview must contain no working or simulated purchase control.

### Gate B — public commerce launch

The site may become a live store only when:

- final photographs and usage rights are approved;
- Square checkout links and behavior are confirmed; and
- the launch policies are complete enough to show customers.
