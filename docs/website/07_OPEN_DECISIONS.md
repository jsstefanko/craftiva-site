# Open Decisions and Owner Confirmations

**Status:** Working decision list  
**Version:** 0.1  
**Date:** 6 September 2026

This file consolidates matters that should be decided or verified before implementation or launch. “Before design” items can materially change page structure or imagery. “Before commerce” and “Before launch” items may be completed later.

## Before design and wireframes

| ID | Decision or confirmation | Current recommendation | Owner response |
|---|---|---|---|
| OD-001 | Approve primary navigation | Shop, The House, The Studio, About | **Approved** |
| OD-002 | Approve homepage headline direction | “Timeless Creations for Your Space.” | **Approved for now** |
| OD-003 | Approve homepage sequence | Hero → Available Now → The House → Forthcoming → The Studio → Our Standard → About → Footer | **Approved** |
| OD-004 | Confirm that serving tray and cutting boards should be publicly Forthcoming | Yes, with no price, cart, or date | **Confirmed** |
| OD-005 | Decide whether Forthcoming prototype pages should link to the one-off Etsy listings | Keep Etsy separate initially | **No Etsy links** |
| OD-006 | Decide public treatment of lotus and shell trivets | Studio-only; not available, forthcoming, or promoted in Shop/The House | **Approved for The Studio** |
| OD-007 | Decide whether wooden vases appear in The Studio at launch | Show as honest prototype/development work | **Yes** |
| OD-008 | Approve the Home & Living tier 2 label | Recommended: “Decorative Objects” | **Approved** |
| OD-009 | Approve Cormorant Garamond + DM Sans | Retain pairing and align it aesthetically with the Bellefair Regular logo wordmark | **Approved** |
| OD-010 | Select the authoritative logo composition and color variants | Stacked lotus with two-line Craftiva Studio as primary; horizontal lotus/wordmark where space favors it | **Approved as recommended; implementation will select the best existing vector/color files** |
| OD-011 | Decide whether About names Jessica and Jerry and uses founder photography | Do not use names at initial launch | **No names for now; discuss with Jessica** |
| OD-012 | Confirm whether an email signup belongs in launch scope | Omit until there is a real list and communication plan | **Do not include** |

### OD-008 naming note

1. **Decorative Objects** — recommended. It fits the gallery/editorial voice, accommodates the wooden vases, and can expand beyond botanical work.
2. **Home Décor** — immediately familiar to shoppers, but more conventional and marketplace-like.
3. **Decorative Forms** — more design-oriented, but less clear about function and future category scope.

“Decor” by itself is too broad to work well as a tier 2 category label.

## Before product-page completion

| ID | Decision or confirmation | Needed information | Owner response |
|---|---|---|---|
| OD-013 | P01 specifications | Dimensions, finish, care, mounting method, included hardware, package contents | **Confirmed at fact level from current listing records; recorded in product source of truth** |
| OD-014 | P01 capacity wording | Confirm “about 30 comfortably / up to 60 layered” and “Designed by a runner” | **Confirmed: 30 comfortably / up to 60 layered, with variability qualifier; “Designed by a runner” is accurate** |
| OD-015 | P02 specifications | Dimensions, finish, care, package contents | **Confirmed at fact level from current product-listing records; recorded in product source of truth** |
| OD-016 | P02 compatibility wording | Consumer-friendly explanation of compatible cookware | **Confirmed: magnetic with cast iron, enameled cast iron, carbon steel, and magnetic stainless; other listed materials work only as an ordinary trivet** |
| OD-017 | P02 heat guidance | Confirm whether a documented maximum surface temperature exists | **No documented maximum; publish no numeric temperature or “heatproof” claim** |
| OD-018 | Approve price references and normal direct-sale prices | P01: $54.99 Amazon list/reference, $49.49 normal website price; P02: $45.98 Amazon list/reference, $44.95 normal website price | **Approved** |
| OD-019 | Approve selected photographs and usage rights | Build first with stable image slots and provisional assets; approve final images and rights before public launch | **Approach approved; final image selections remain a launch gate** |

## Before commerce integration

Commerce integration is deferred until the visual/content build is further along. OD-020 through OD-028 and OD-036 do not block the initial non-transactional preview.

| ID | Decision or confirmation | Current recommendation | Owner response |
|---|---|---|---|
| OD-020 | Square purchase method | Use Craftiva-styled controls linked to Square Payment Links; test individual and two-product purchase paths | **P01 and P02 links received; integration remains deferred; multi-item path still needed** |
| OD-021 | Multi-item cart behavior | Use Square ordering/cart page if buttons cause separate checkouts | **Deferred until after initial site build** |
| OD-022 | Inventory model | Decide combined pool versus CA/VA locations | — |
| OD-023 | Opening quantities and alerts | Enter verified quantities by chosen inventory model | — |
| OD-024 | Order notification and assignment | Both owners notified; one owner explicitly claims each order | — |
| OD-025 | Postage and tracking process | Choose system and define where tracking is recorded | — |
| OD-026 | Processing time | Publish a conservative range the owners can consistently meet | — |
| OD-027 | Supported shipping geography | Define contiguous US, Alaska/Hawaii, territories, APO/FPO, and international policy | — |
| OD-028 | Tax settings | Verify live Square configuration | — |
| OD-036 | Square price presentation after the current Amazon sale | Show $49.49 and $44.95 as normal prices; no continuing sale/compare-at treatment | **Lower online prices configured in Square. Generated embeds still show list prices; verify charged amounts during final commerce testing and adjust within Square if necessary. Does not block website build** |
| OD-037 | Post-checkout destination | Keep Square's default transaction-specific confirmation screen; do not enable an automatic website redirect initially | **Approved working direction based on Square preview; verify with a test order** |
| OD-038 | Website treatment of Square's generated buy-button code | Use the direct Payment Links behind Craftiva-styled accessible buttons; retain the Square embeds only as reference | **P01 and P02 references received; recommended approach awaits commerce implementation** |
| OD-039 | Square checkout display names | Align Square's customer-visible item names with the approved website names, or explicitly approve the shorter Square variants | **Current supplied embeds use the shorter internal names; verify before launch** |

## Before launch

| ID | Decision or confirmation | Needed information | Owner response |
|---|---|---|---|
| OD-029 | Return policy | Window, condition, return shipping, damaged items, refund timing | — |
| OD-030 | Customer-service contact | Confirm `hello@craftiva.studio` or another address | — |
| OD-031 | Exact legal footer name and trademark wording | Confirm current legal wording | — |
| OD-032 | Privacy and analytics | Decide whether analytics/email tools are used and disclose accordingly | — |
| OD-033 | Social links | Include only active accounts that should receive site traffic | — |
| OD-034 | `shopcraftiva.com` redirect | Redirect to `https://craftiva.studio/shop` | — |
| OD-035 | Production approval authority | Confirm who may approve merge/publish | — |

## Items intentionally deferred

- Amazon FBA integration for direct-site orders
- Automated geographic fulfillment routing
- Customer accounts
- Onsite reviews
- Full onsite search
- Journal publication
- Public launch of lotus and shell trivets
- Separate pages for every conceptual room
