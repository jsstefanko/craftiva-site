# Craftiva Website Repository Instructions

This is a proposed `AGENTS.md` for the actual Craftiva website repository. Copy it into that repository only after the owners approve the build packet and source paths are updated.

## Source of truth

- Treat the approved website build packet in `docs/website/` as the source of truth for this project.
- Use the current live Square catalog as the authority for direct-sale prices, purchase availability, and checkout links.
- Use current approved product specifications as the authority for dimensions, materials, finish, care, compatibility, package contents, and installation.
- Treat older website briefs and the existing site as historical references where they conflict with the approved packet.
- Treat concept images as visual references only, never as product-fact sources.

## Product truth

- Never invent or infer a Craftiva product, material, specification, price, review, release date, environmental claim, manufacturing story, or availability state.
- Only products marked Available may show a price or purchase control.
- Forthcoming products may use approved real photography but must not show a price, purchase control, or promised date.
- In Development work must be presented as studio work, process, prototype, sketch, drawing, or material study—not as finished merchandise.
- Exclude products marked Held / not public from pages, navigation, metadata, structured data, and promotional imagery.
- A product visible in a photograph is not necessarily available. Check the asset manifest before using the image.
- Use approved real photography for product representation. Do not use AI composites as product photographs.
- Lotus and shell trivets may appear only in The Studio and must not be represented as Available, Forthcoming, or purchasable.
- Wooden flower/propagation vases may appear only as Studio development work unless their status is later changed in the approved packet.

## Image slots

- Build image components against the stable paths and aspect ratios in `04_PHOTOGRAPHY_AND_ASSETS.md` and `photo_manifest_template.csv`.
- Provisional images and neutral placeholders are allowed on design previews. Final owner approval and commercial-use rights are required before public launch.
- Do not import camera filenames directly into page components. Use the stable semantic path for the image's role, such as `/images/products/p02/p02-main.jpg`.
- Replacing a photo should normally mean overwriting the file at the same path, then committing, pushing, and reviewing the new Vercel preview—not changing page code.
- Preserve the specified orientation, aspect ratio, and file extension when replacing a slot occupant.

## Commerce

- Square owns checkout, payment, direct-sale price, tax, order creation, and direct-sale inventory.
- Defer Square integration until the owners approve the visual/content preview. Do not add checkout links, carts, or purchase buttons during the initial design build.
- Do not build custom card-data handling.
- Do not change Square prices, tax, shipping, or inventory settings unless the user explicitly requests that separate operational change.
- After 7 September 2026, show `$49.49` for P01 and `$44.95` for P02 as normal website prices. Do not use the higher Amazon list/reference prices to imply a continuing sale unless the owners later authorize a promotion.
- Do not place passwords, API secrets, private keys, or recovery codes in the repository.
- Test both individual-product and multi-product purchase paths before launch.
- If Payment Links are selected, retain Square's default transaction-specific confirmation screen and do not build or configure an automatic Craftiva-site redirect unless the owners later approve a defined post-purchase requirement.

## Design and accessibility

- Preserve the approved warm, editorial, gallery-like design direction.
- Keep Available products and the purchase path immediately understandable.
- Do not add nonfunctional cart, account, search, wishlist, review, or scarcity controls.
- Implement responsive behavior for mobile, tablet, and desktop.
- Maintain keyboard access, visible focus, logical headings, sufficient contrast, useful image text alternatives, and reduced-motion support.
- Prefer omission and white space to filler content or invented inventory.
- Use the approved stacked logo as the default and the approved horizontal logo where the layout requires it. Do not re-typeset the Bellefair Regular wordmark as ordinary page text.

## Source control and deployment

- Preserve the existing repository structure, package manager, lockfile, and Vercel configuration unless a change is necessary and explained.
- Work on a dedicated branch and use the Vercel preview for review.
- Do not merge to the production branch or publish to the production domain without explicit owner approval.
- Preserve the current live experience until a replacement preview is working and approved.
- Do not close a reported issue until it has been retested on the relevant preview.
- The launch gate requires zero open P0 or P1 issues.
