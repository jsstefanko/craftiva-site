# Website QA and Launch Plan

**Status:** Draft  
**Version:** 0.1  
**Date:** 6 September 2026

## 1. Issue tracking

Use one shared issue log for website review. Every issue receives a stable identifier such as `WEB-001`.

Required fields:

- ID
- Short description
- Page or checkout stage
- Device and browser
- Severity
- Reproduction steps
- Expected result
- Actual result
- Screenshot or recording
- Owner
- Status
- Build or preview where fixed
- Retest result

Do not close an issue merely because a change was made. Close it after retesting the relevant preview.

### Phase distinction

- **Design-preview QA:** navigation, content truth, image-slot behavior, responsive layout, accessibility, performance, and missing assets. Checkout tests are not expected because commerce is deliberately absent.
- **Commerce-launch QA:** all design-preview checks plus Square checkout, pricing, stock behavior, shipping, tax, policy, notification, fulfillment, and refund tests.

An intentionally absent purchase control is not a defect during the design-preview phase. A visible but nonfunctional or simulated purchase control is a defect.

## 2. Severity

### P0 — Critical

The site is unavailable; payment or personal data is exposed; orders are lost or duplicated; or customers can be charged incorrectly.

### P1 — Purchase blocking

Checkout cannot be completed; price or product is wrong; an unavailable product can be purchased; mobile navigation prevents shopping; or a material fulfillment promise is false.

### P2 — Important

Usability, accessibility, performance, search presentation, content accuracy, or layout problems that do not fully block purchase.

### P3 — Cosmetic

Minor spacing, typography, image-crop, or polish issue with no meaningful effect on understanding or purchase.

## 3. Content and merchandising QA

- Only P01 and P02 appear as Available.
- Prices match the live Square catalog.
- The normal website prices are $49.49 for P01 and $44.95 for P02 after 7 September 2026.
- The site does not continue to present either product as on sale merely because the Amazon list/reference price is higher.
- Product names match approved customer-facing names.
- Customer-visible item names in Square remain recognizably consistent with the Craftiva product-page names.
- Materials, dimensions, capacity, compatibility, and package contents are accurate.
- Forthcoming products show no price or purchase control.
- Lotus and shell trivets appear only in an explicitly Studio context and never as Available, Forthcoming, or purchasable products.
- Wooden vases are not represented as purchasable or release-ready.
- Every photograph has been checked for visible product-status conflicts.
- No fabricated ratings, reviews, scarcity, environmental claim, or manufacturing story appears.
- About and legal business names are accurate.

## 4. Functional QA

- Navigation works from every page.
- Logo returns to Home.
- All buttons lead where their labels promise.
- Square handoff works on mobile and desktop.
- Quantity selection works as intended.
- A buyer can purchase each product individually.
- The selected solution for buying both products is tested.
- Sold-out behavior prevents accidental purchase.
- Confirmation page and confirmation email contain the correct items and totals.
- The Square confirmation screen clearly identifies successful payment, the purchased item, amount, and appropriate customer details.
- No automatic Craftiva-site redirect interrupts or replaces the Square confirmation screen in the initial launch flow.
- Shipping appears as intended.
- Tax behavior matches Square configuration.
- Tracking and fulfillment status can be updated through the chosen process.
- `shopcraftiva.com` redirects to `/shop`.
- `www` and non-`www` addresses behave consistently.
- Contact email links work.
- Policy links work.

## 5. Responsive and browser QA

Test at minimum:

- A current iPhone-sized viewport
- A current Android-sized viewport
- Tablet portrait
- Laptop
- Wide desktop
- Safari
- Chrome
- One additional Chromium browser if practical

Check particularly:

- hero crop and readable text;
- navigation and menu behavior;
- product-gallery gestures and controls;
- purchase action visibility;
- Square checkout return path;
- no horizontal scrolling;
- tap targets and text size; and
- no content hidden by sticky controls.

## 6. Accessibility QA

- Keyboard-only navigation reaches every interactive control.
- Focus is visible.
- Page landmarks and heading levels are logical.
- Forms and icons have accessible names.
- Informative images have useful alternative text.
- Decorative images are ignored by assistive technology.
- Text and controls have sufficient contrast.
- Important meaning is not conveyed by color alone.
- Motion respects reduced-motion preferences.
- Zoom to 200 percent does not prevent shopping.
- Error messages explain what happened and how to recover.

## 7. Performance and search QA

- Images are appropriately sized and compressed.
- The first page view does not require loading the complete photo archive.
- Layout does not jump substantially as images load.
- Page titles and descriptions are unique and accurate.
- Product pages have accurate share images and descriptions.
- Canonical addresses point to `craftiva.studio`.
- A sitemap and sensible crawler rules are present.
- Broken links and missing images are checked.
- A not-found page provides a useful path back to Shop or Home.

## 8. Checkout test orders

Before launch, complete controlled test orders for:

1. P01 only
2. P02 only
3. Both products in one transaction, if supported
4. Quantity greater than one, if permitted
5. A sold-out or unavailable case
6. A refund/cancellation flow

For each, verify customer email, owner notification, tax, shipping, inventory adjustment, assignment to California or Virginia, tracking, and refund records.

## 9. Launch gate

The redesign may replace the live site only when:

- owner approval is recorded;
- there are zero open P0 or P1 issues;
- any accepted P2 issues are explicitly documented;
- product facts and prices have been checked against Square;
- both owners understand the order-notification and fulfillment process;
- domain redirects are ready;
- a production rollback path is understood; and
- the old site remains recoverable through Git history or the previous Vercel deployment.

## 10. Post-launch check

Within the first day after launch, verify:

- primary domain and redirects;
- product pages;
- real checkout from the production domain;
- order and email notifications;
- mobile presentation;
- analytics or error monitoring, if enabled; and
- no search/share metadata still reflects the old “first product arriving” site.
