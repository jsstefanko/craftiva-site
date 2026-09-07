# Commerce and Operations Requirements

**Status:** Draft for operational confirmation  
**Version:** 0.1  
**Date:** 6 September 2026

## 1. Commerce model

The Craftiva website provides the brand, editorial, and product-evaluation experience. Square is the system of record for direct-sale prices, payments, orders, tax handling, and direct-sale inventory.

The initial implementation should remain proportionate to two products and low order volume. It should not introduce a custom payment system, custom card-data handling, or a complex fulfillment application.

### Current project phase

Commerce integration is deliberately deferred until the visual structure, content, product-page layouts, and responsive behavior have been reviewed on a Vercel preview. The first build should contain no Square link, embedded checkout, cart, account, or nonfunctional purchase control.

Prices may appear as product information during the preview phase, but the preview must not be promoted as a live store. A production launch remains blocked until the Square purchase path, inventory behavior, shipping/tax presentation, returns, and customer-service process are complete and tested.

## 2. Recommended checkout approach

### Preferred later test

Use Square-hosted checkout through Payment Links or Square-provided purchase buttons while keeping Craftiva product pages on `craftiva.studio`.

Before selecting the final control, test:

- whether a customer can buy both available products in one order;
- whether quantities can be changed clearly;
- how shipping is displayed when included in the price;
- mobile handoff from Craftiva to Square;
- return path after checkout;
- confirmation email content;
- inventory reduction; and
- owner order notifications.

If individual purchase buttons force separate checkouts, use a Square ordering/cart page for customers who want multiple items, while retaining the Craftiva editorial product pages.

### Post-checkout destination

Keep Square's default confirmation screen for the initial store and leave “Redirect to a website after checkout” turned off. The Square screen is transaction-specific: it can confirm successful payment and show the purchased item, amount, payment summary, and buyer information. A simple Craftiva page could not safely reproduce that information without a secure order integration.

This choice favors clarity and transaction confidence over immediately returning the buyer to the editorial site. Customize Square's customer-facing branding and digital receipts with the approved Craftiva logo, brand color, business contact information, and return-policy text where supported.

Verify the complete experience with a real test order, including the confirmation screen and emailed receipt. Reconsider a Craftiva redirect later only if there is a specific post-purchase need—such as detailed product setup or care guidance—and either Square preserves a clear confirmation step first or the site implements a secure transaction-aware confirmation flow.

## 3. Current price baseline

| Product | Amazon list/reference price | Normal website selling price after 7 September 2026 | Free shipping | Square status needed |
|---|---:|---:|---|---|
| P01 Solid Wood Medal Hanger Display | $54.99 | $49.49 | Included | Confirm item active, stockable, and checkout link ready |
| P02 Magnetic Trivet Set – Leaf & Acorn | $45.98 | $44.95 | Included | Confirm item active, stockable, and checkout link ready |

These values come from the current Square import workbook and the owner's explanation of their intended roles. After the current Amazon sale ends, the Craftiva site should display `$49.49` and `$44.95` as the normal selling prices. It should not show the Amazon list/reference prices as crossed-out comparison prices or otherwise imply that the products remain on sale. If Square currently treats the second column as an active online-sale price, its live configuration needs to be adjusted or verified before checkout is connected.

### Payment-link assets received

#### P01 — Solid Wood Medal Hanger Display

| Asset | Value | Intended use |
|---|---|---|
| Direct Payment Link | `https://square.link/u/jQeDrJcY` | Destination for the future Craftiva-styled P01 purchase button |
| Square embed destination | `https://square.link/u/jQeDrJcY?src=embed` | Reference only; retains Square's embed-source tracking parameter |
| QR code source | `/Users/jerry/Downloads/medal-hanger-checkout-link-qr-code.png` (120 × 120 px) | Reference/event asset; not needed on the website product page. Obtain a larger or vector export before producing booth signage |
| Supplied embed code | `square_p01_buy_button_reference.html` | Preserve as a record of Square's generated code; do not use as the production product card |

The supplied P01 embed displays the `$54.99` list price, while Square has been configured with an online price of `$49.49`.

#### P02 — Magnetic Trivet Set – Leaf & Acorn

| Asset | Value | Intended use |
|---|---|---|
| Direct Payment Link | `https://square.link/u/FVapMU1q` | Destination for the future Craftiva-styled P02 purchase button |
| Square embed destination | `https://square.link/u/FVapMU1q?src=embed` | Reference only; retains Square's embed-source tracking parameter |
| QR code source | `/Users/jerry/Downloads/checkout-link-qr-code.png` (120 × 120 px) | Reference/event asset; not needed on the website product page. Obtain a larger or vector export before producing booth signage |
| Supplied embed code | `square_p02_buy_button_reference.html` | Preserve as a record of Square's generated code; do not use as the production product card |

The supplied P02 embed displays the `$45.98` list price, while Square has been configured with an online price of `$44.95`.

This difference does not block the website build because the production site will not use the Square-generated cards or their hard-coded displayed prices. The Craftiva page will show the approved normal website prices and link to Square. During final commerce testing, confirm that each Square checkout charges the lower online price. If Square instead charges the list price, correct the Square configuration at that stage; do not compensate for it in website code.

Also align or deliberately approve the customer-visible names in Square. The supplied embeds use “Race Medal Display” and “Magnetic Wooden Trivet Set,” while the website source of truth uses “Solid Wood Medal Hanger Display” and “Magnetic Trivet Set – Leaf & Acorn.” The product name shown after the customer leaves Craftiva should remain recognizably consistent with the page they selected.

For the production website, use the direct Payment Link as the destination of a normal accessible Craftiva button built within the site's design system. Do not paste the complete Square card into the product page: it hard-codes the price and dimensions, loads its image from Square's external storage, uses Square typography, and duplicates product information already controlled by the Craftiva page.

## 4. Shipping and fulfillment

### Confirmed operating approach

- Direct orders will initially be fulfilled by Jessica in California or Jerry in Virginia.
- The order is assigned to the person closer to the recipient when that reduces delivery time and cost.
- Shipping is included in the displayed product price.
- Existing inventory held by the two owners is expected to support the likely initial volume.
- Amazon FBA or another integrated fulfillment system may be evaluated if direct sales grow materially.

### Website wording requirement

Customer-facing language should say that standard shipping is included. It should not expose an informal internal routing promise that cannot always be guaranteed.

Proposed direction, subject to approval:

> Standard shipping within the contiguous United States is included. Orders are typically dispatched from the Craftiva location best positioned to serve the destination.

Do not publish “contiguous United States,” a processing-time range, carrier promise, or delivery estimate until the owners confirm the actual policy.

### Manual order-routing checklist

For each order:

1. Square records the order and payment.
2. Both owners, or a designated primary owner, receive the order notification.
3. Confirm which location has stock and is better positioned for the destination.
4. Assign fulfillment responsibility.
5. Purchase and record postage using the selected process.
6. Provide tracking to the buyer through Square or the approved communication method.
7. Reduce or reconcile location inventory as required.
8. Retain the order record for customer service and accounting.

## 5. Inventory

The website should not maintain an independent stock number. Square should govern whether an Available product can be purchased.

Still to determine:

- whether inventory is tracked as one combined pool or by California/Virginia location;
- opening quantity at each location;
- stock-alert threshold;
- behavior when one location reaches zero but the other has units;
- who reconciles Square after an in-person, Etsy, or replacement-unit transaction; and
- whether the website should show “In stock” or simply suppress purchase when unavailable.

Avoid urgency claims based on inventory unless they are accurate and automatically maintained.

## 6. Returns and customer service

Before launch, approve and publish:

- return window;
- condition required for return;
- who pays return shipping;
- treatment of damaged, defective, or incorrect items;
- process for starting a return;
- refund timing;
- exceptions, if any; and
- customer-service email.

Square's operational settings and the website policy must agree.

## 7. Taxes and geography

Confirm in Square:

- selling locations and business address information;
- sales-tax calculation settings;
- states or territories to which direct orders may ship;
- whether Alaska, Hawaii, territories, APO/FPO, or international orders are initially supported; and
- whether free/included shipping applies to every supported destination.

The website should not make tax or delivery promises beyond the configured Square checkout behavior.

## 8. Etsy and Amazon relationship

- Direct Craftiva purchases should not default to Amazon.
- Etsy can remain a separate marketplace channel.
- Etsy prototype listings do not need to appear in the normal Craftiva Shop.
- Do not link the Craftiva website to the Etsy prototype listings.
- Lotus and shell trivets may appear only in The Studio, without price, purchase controls, or a release promise.
- Amazon FBA integration is deferred until volume justifies it.

## 9. Domains

- `craftiva.studio` remains the canonical site and brand address.
- `shopcraftiva.com` redirects to `https://craftiva.studio/shop`.
- Both domains should use secure HTTPS.
- Search engines should see one canonical version of each page.
- Existing `www` behavior should be checked and redirected consistently.

## 10. Security and data handling

- Do not place Square passwords, API secrets, private keys, or recovery codes in GitHub or packet documents.
- Prefer hosted Square checkout so payment-card data never passes through Craftiva-controlled site code.
- Public Payment Link URLs or Square-generated embed snippets may be stored with the site.
- Add analytics only after deciding what is necessary and how privacy disclosure will be handled.
- Avoid customer accounts or onsite storage of personal information unless a real business requirement emerges.
