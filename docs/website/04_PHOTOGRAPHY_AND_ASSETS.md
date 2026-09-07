# Photography and Asset Plan

**Status:** Initial inventory and requirements  
**Version:** 0.1  
**Date:** 6 September 2026

## 1. Existing source locations identified

### Website and legacy brand assets

`/Users/jerry/Library/CloudStorage/GoogleDrive-jerry@craftiva.studio/Shared drives/Craftiva/04 – Brand (Craftiva)/Website & Email/Craftiva.Studio Website/`

This folder contains the current site, legacy website briefs, web logo images, and earlier category-card imagery.

### Authoritative logo candidates

`/Users/jerry/Library/CloudStorage/GoogleDrive-jerry@craftiva.studio/Shared drives/Craftiva/04 – Brand (Craftiva)/Logos & Brand Assets/Craftiva Logo Files/`

Vector logo files are preferred over raster images. The approved primary composition is the stacked mark, with “Craftiva Studio” centered on two lines beneath the lotus. This is approximately square and should be the default mark. The approved horizontal composition, with the wordmark beside the lotus, may be used where a landscape proportion fits better. The wordmark uses Bellefair Regular. During implementation, select the best existing vector file for each approved composition and the appropriate existing color version; do not redesign or re-typeset the logo.

### August kitchen photography

`/Users/jerry/Library/CloudStorage/GoogleDrive-jerry@craftiva.studio/Shared drives/Craftiva/04 – Brand (Craftiva)/Images/2026-08-11 Lifestyle Kitchen/`

This folder contains more than 50 high-resolution JPEGs from the kitchen session. The session includes the magnetic trivet set as the intended hero and may include the tray, cutting board, and wooden vases as background prototypes.

### Concept image

`/Users/jerry/Downloads/blueprint concept image (1).png`

Use for visual direction only. Do not publish it or treat objects, labels, prices, materials, or specifications visible in it as factual.

## 2. Photography rules

- Use real Craftiva products only.
- Use natural-looking warm light, preferably soft morning light.
- Favor linen, stone, wood, glass, and restrained greenery.
- Products remain the visual subject.
- Avoid clutter, rustic/farmhouse styling, novelty props, and visible third-party branding.
- Keep final color consistent across images used together.
- Preserve uncropped masters outside the website repository.
- Do not burn text into master photographs.
- Confirm commercial-use rights for every selected image.
- Lotus and shell trivets may be prominent only in an explicitly Studio context; elsewhere they must not appear purchasable or part of the available assortment.

## 3. Stable image-slot approach

The site may be built before final photography is selected. Code should refer to a small set of stable, human-readable image paths that describe the image's role, not its current contents. A provisional photograph or neutral ratio-matched placeholder can occupy each slot during design. Replacing that file with a new image of the same name, extension, and intended aspect ratio should require no page-code change.

For a GitHub/Vercel site, replacement still means committing and pushing the new file so that Vercel creates a new deployment. “No recoding” does not mean that uploading a file somewhere outside the repository will automatically update the live site.

### Required slots and aspect ratios

| Slot | Stable path under `public` | Ratio | Recommended minimum | Display behavior | Brief |
|---|---|---:|---:|---|---|
| Homepage hero, desktop | `/images/home/home-hero.jpg` | 16:9 | 2400 × 1350 | Cover | Warm editorial setting led by an Available product; leave quiet space for headline and button |
| Homepage hero, mobile | `/images/home/home-hero-mobile.jpg` | 4:5 | 1600 × 2000 | Cover | Mobile composition of the same story; product and focal point remain clear behind text |
| P01 homepage card | `/images/home/p01-card.jpg` | 4:3 | 1600 × 1200 | Cover | Medal display recognizable at card size |
| P02 homepage card | `/images/home/p02-card.jpg` | 4:3 | 1600 × 1200 | Cover | Both leaf and acorn clearly visible |
| P01 main | `/images/products/p01/p01-main.jpg` | 4:5 | 2000 × 2500 | Contain | Clean primary product view; full product remains visible |
| P01 installed | `/images/products/p01/p01-installed.jpg` | 4:5 | 2000 × 2500 | Cover | Complete display mounted and in use |
| P01 capacity | `/images/products/p01/p01-capacity.jpg` | 4:5 | 2000 × 2500 | Cover | Medals and bib used honestly; no overcrowding that contradicts copy |
| P01 peg detail | `/images/products/p01/p01-pegs.jpg` | 1:1 | 1600 × 1600 | Cover | Peg construction, ribbon placement, and wood grain |
| P01 bib-clip detail | `/images/products/p01/p01-bib-clip.jpg` | 1:1 | 1600 × 1600 | Cover | Metal clip with race bib or keepsake |
| P01 installation | `/images/products/p01/p01-installation.jpg` | 4:5 | 2000 × 2500 | Cover | Z-clip and included hardware shown accurately |
| P01 packaging | `/images/products/p01/p01-packaging.jpg` | 4:5 | 2000 × 2500 | Cover | Craftiva box and included printed materials |
| P02 main | `/images/products/p02/p02-main.jpg` | 4:5 | 2000 × 2500 | Contain | Leaf and acorn set together; both shapes fully visible |
| P02 material detail | `/images/products/p02/p02-material.jpg` | 1:1 | 1600 × 1600 | Cover | Beech grain, rounded edge, and finish |
| P02 underside | `/images/products/p02/p02-underside.jpg` | 1:1 | 1600 × 1600 | Cover | Silicone feet and plugged magnet construction |
| P02 in use | `/images/products/p02/p02-in-use.jpg` | 4:5 | 2000 × 2500 | Cover | Trivet attached to compatible cookware or supporting it on a protected surface |
| P02 pair in use | `/images/products/p02/p02-pair-in-use.jpg` | 3:2 | 1800 × 1200 | Cover | Both pieces serving a real table or kitchen use |
| P02 packaging | `/images/products/p02/p02-packaging.jpg` | 4:5 | 2000 × 2500 | Cover | Cushioned kraft packaging and printed materials |
| Studio serving tray | `/images/studio/serving-tray.jpg` | 4:5 | 1600 × 2000 | Cover | Real prototype; clearly marked Forthcoming in surrounding text |
| Studio cutting board | `/images/studio/cutting-board.jpg` | 4:5 | 1600 × 2000 | Cover | Real prototype; clearly marked Forthcoming in surrounding text |
| Studio lotus trivet | `/images/studio/lotus-trivet.jpg` | 4:5 | 1600 × 2000 | Cover | Real sample shown as studio work, not merchandise |
| Studio shell trivet | `/images/studio/shell-trivet.jpg` | 4:5 | 1600 × 2000 | Cover | Real sample shown as studio work, not merchandise |
| Studio wooden vases | `/images/studio/wooden-vases.jpg` | 4:5 | 1600 × 2000 | Cover | Real prototypes with restrained botanical styling |

These ratios define the visual containers and replacement requirements. A replacement should preserve the slot's orientation and focal-point logic. The homepage uses a separate mobile file because one dramatic desktop crop is unlikely to remain dependable on a narrow screen.

## 4. Minimum launch image set

### Site-wide

- One strong horizontal homepage hero featuring an Available product
- One dedicated 4:5 mobile homepage hero
- One image for Display & Organization
- One image for Kitchen & Table
- One restrained editorial image or design study for Home & Living / The Studio, if used
- One social-sharing image or an approved crop derived from real site photography
- Optional founder/studio photograph for About

### P01 medal display

- Primary product image
- Full installed view
- Close view of medal pegs
- Close view of the bib clip
- Capacity/use view with medals and bib
- Installation or included-hardware view
- Detail showing material and finish

### P02 magnetic trivet set

- Primary product image showing both pieces
- Detail of grain and carved forms
- Edge/thickness view
- Underside/silicone feet view
- In-use image with compatible cookware
- Image showing both trivets in use
- Packaging image if gifting is part of the website proposition

### Forthcoming work

- Use only photographs intentionally approved to present the tray or cutting board as Forthcoming.
- A background appearance in another product's shoot does not automatically qualify as suitable Forthcoming photography.
- If the imagery does not meet the same standard as Available-product imagery, omit the Forthcoming section until suitable photographs exist.

### Studio-only work

- Lotus and shell trivets may be shown as real prototypes or product studies in The Studio.
- Wooden flower/propagation vases may be shown in The Studio.
- Studio imagery must not use price, cart, “coming soon,” or release-date language unless a later decision changes status.
- These objects should not be used as the homepage hero or normal Shop/House merchandising.

## 5. Build, selection, and approval process

1. Build every image component against the stable slot path and specified aspect ratio.
2. Use a neutral placeholder or provisional real image while the design is being developed.
3. Create contact sheets for each major source folder when final selection begins.
4. Identify all Craftiva objects visible in each candidate image.
5. Check the image against public product status and the slot brief.
6. Confirm crop flexibility, image quality, and commercial-use rights.
7. Record owner approval for public launch.
8. Replace the slot file while preserving its filename, extension, orientation, and intended ratio.
9. Commit and push the asset change, review the Vercel preview, and promote only after approval.

Final photo approval is a launch gate, not a prerequisite for building and iterating on the website.

## 6. Repository asset handling

- Keep RAW files, complete shoots, and uncropped archive masters in Google Drive.
- During design, provisional web-ready images or neutral placeholders may be stored in the repository; identify them as provisional in the manifest.
- Use the stable slot filenames above rather than camera filenames in page components.
- Keep an asset manifest mapping the final filename to the original source.
- Keep the stable path centralized in the site's product/content data when practical. Do not scatter alternate filenames through page code.
- Preserve each slot's file extension when replacing an asset. Changing `.jpg` to `.webp`, for example, changes the path and requires a code or data update.
- Include meaningful alternative text for informative images; use empty alternative text for purely decorative repetitions.

## 7. Decisions still required before public launch

- Best existing vector files and color variants for the two approved logo compositions
- Final occupant of each required image slot
- Whether any optional slots can be omitted because no sufficiently strong image exists
- Confirmation that selected photography has the required commercial usage rights
