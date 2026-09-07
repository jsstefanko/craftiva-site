# Craftiva.Studio Website Brief

**Status:** Draft for owner review  
**Version:** 0.1  
**Date:** 6 September 2026

## 1. Business objective

Create a true direct-to-consumer home for Craftiva that converts interest generated through social media and other brand activity without requiring customers to shop through Amazon or Etsy.

The site should support the business at its present scale:

- two products available for direct purchase;
- low expected initial order volume;
- owner-managed fulfillment from California and Virginia;
- free shipping included in product prices; and
- the ability to add products and more sophisticated fulfillment later without rebuilding the brand experience.

## 2. Primary customer

The primary visitor is someone who has encountered Craftiva through social media, a recommendation, an event, Etsy, or another brand touchpoint and wants to understand the company and buy directly.

The site must help that visitor answer four questions quickly:

1. What does Craftiva make?
2. What can I buy now?
3. Why is this product worth its price?
4. Can I trust the company and checkout process?

## 3. Positioning

Craftiva is a design-led home-goods brand, not a maker mythology or a generic product reseller.

The identity should emphasize:

- durability over trend;
- restraint over excess;
- honest materials;
- purposeful, everyday use;
- design intent and iteration; and
- objects that earn their place in a home.

Avoid unsupported claims about in-house fabrication, artisan production, sustainability, manufacturing control, or product origins. Describe what Craftiva actually designs, specifies, tests, selects, and sells.

## 4. Experience principle

The website should feel like a curated design gallery that also makes purchasing easy. It should not look like a crowded marketplace, conventional big-box catalog, or template storefront.

The editorial presentation and the commerce path have different jobs:

- editorial pages create context, confidence, and desire;
- product pages establish facts and support decisions; and
- Square handles secure checkout, payment, tax, and order creation.

The visitor should never have to guess whether an object is available.

## 5. Confirmed brand direction

### Visual character

- Calm, timeless, warm, and architectural
- Generous negative space
- Large, immersive real photography
- Natural materials and subdued surfaces
- Museum/gallery-style presentation
- Minimal icons and decorative elements
- Restrained motion
- Mobile-first responsive behavior

### Color system

| Token | Value | Intended use |
|---|---:|---|
| Warm Linen | `#F7F5F2` | Primary page background |
| Sand | `#EAE3DA` | Alternate sections and quiet cards |
| Travertine | `#D5CEC3` | Dividers, borders, secondary surfaces |
| Natural Oak | `#C7A87B` | Warm material accent |
| Walnut | `#7A5845` | Stronger warm accent |
| Olive | `#70715F` | Sparse accent only |
| Charcoal | `#4C4944` | Primary text and dark surfaces |

Pure white may be used sparingly for product clarity, but the overall field should remain warm rather than stark.

### Typography

- Display and editorial headings: Cormorant Garamond
- Body and interface text: DM Sans
- Craftiva logo wordmark: Bellefair Regular, as incorporated in the approved logo artwork
- Serif headlines should feel editorial, not ornamental.
- Interface labels must remain easy to read at small sizes.

The existing Cormorant Garamond and DM Sans pairing is approved. Its proportions, spacing, and weight should remain aesthetically compatible with the Bellefair wordmark without attempting to recreate or typeset the logo in another font.

### Motion

- Subtle fades and gentle image movement only
- Typical transitions should complete in roughly 300–500 ms
- Navigation and checkout controls should respond immediately
- Respect the visitor's reduced-motion preference
- Do not use scroll effects that interfere with reading or product evaluation

## 6. Domains and platform

### Primary domain

`craftiva.studio`

### Shopping shortcut

`shopcraftiva.com` should redirect to `https://craftiva.studio/shop`.

### Recommended operating model

- Existing website repository remains in GitHub.
- Codex works on a dedicated redesign branch.
- Vercel creates a preview for review without changing the live site.
- Approved work is merged into the production branch.
- Vercel publishes the production site.
- Square provides hosted checkout or approved embedded purchase controls.

Do not create a second independent storefront for `shopcraftiva.com`.

## 7. Launch scope

### Included at launch

- Responsive homepage
- Shop landing page
- Product page for the medal display
- Product page for the magnetic trivet set
- The House editorial/category page
- The Studio page for selected forthcoming and development work
- About page
- Shipping and returns information
- Privacy and terms pages or links appropriate to the checkout arrangement
- Square purchase path for available products
- Domain redirect for `shopcraftiva.com`
- Basic search-engine and social-sharing metadata
- Accessibility, performance, and checkout QA

### Deferred unless later approved

- Customer accounts on the Craftiva site
- Reviews hosted by Craftiva
- A full onsite search function
- A large conventional cart built and maintained by Craftiva
- Amazon FBA integration
- Automated split fulfillment between California and Virginia
- A journal before there is enough real material to sustain it
- Separate room pages with insufficient content
- Email marketing or signup functionality
- Lotus and shell trivet promotion

## 8. Content truth rules

1. Use real Craftiva products only.
2. Use approved, real photography for product representation.
3. Do not infer product availability from its appearance in a photograph.
4. Do not invent specifications, prices, materials, reviews, release dates, environmental claims, or manufacturing stories.
5. Label every publicly presented product as Available, Forthcoming, or In Development according to `02_PRODUCT_AND_MERCHANDISING.md`.
6. A product may be withheld from the website even when a physical sample or production path exists.
7. Do not imply that Forthcoming or In Development products can be purchased.
8. Do not show a price, cart control, or release promise for a non-available product.

## 9. Core user journeys

### Direct purchase

Social or direct link → homepage or product page → evaluate product → select purchase action → Square checkout → order confirmation.

### Brand exploration

Homepage → The House → category/product context → available product → Square checkout.

### Studio exploration

Homepage or navigation → The Studio → understand forthcoming and development work → return to available products.

## 10. Definition of success

The launch version succeeds when:

- a visitor can recognize the brand and available products immediately;
- the two available products are accurately represented;
- checkout works cleanly on mobile and desktop;
- buyers can understand shipping, returns, and who is selling the product;
- non-available products cannot be mistaken for purchasable items;
- the site can add another product without a structural redesign;
- the current live site remains available until the replacement is approved; and
- there are no unresolved purchase-blocking or high-severity defects.

## 11. Design reference cautions

The supplied blueprint concept image establishes mood, composition, palette, and an architectural/editorial direction. It is not an inventory record or a source of product facts.

Specific corrections to carry into design:

- the current display product is a wooden race medal and bib display, not a metal kitchen display board;
- the available trivets are the magnetic leaf-and-acorn set; lotus and shell designs may appear only as Studio work and are not for sale;
- the serving tray and cutting boards are forthcoming, not generally available;
- wooden flower/propagation vases are development work, not available products;
- no unsupported sustainability claim should appear; and
- fabricated prices, specifications, or AI-composited product scenes must not be used.
