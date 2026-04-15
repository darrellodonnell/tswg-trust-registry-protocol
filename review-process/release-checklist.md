# TRQP v2.0 Release Checklist

## Pre-Release

- [ ] All spec content finalized and reviewed
- [ ] SpecUp build generates clean `dist/` output (`index.html`, images, swagger.yaml, v2/ subdirectories)
- [ ] Document status updated to "Approved Deliverable" in spec frontmatter
- [ ] Version number confirmed in all locations
- [ ] All images render correctly in `dist/index.html`
- [ ] `swagger.yaml` is current and validated
- [ ] Review committee checklist complete (see `review-committee-checklist.md`)

## Package: ToIP/LDFT Webmaster

Deliver the **full `dist/` folder** for hosting at the permalink location.

- [ ] Create archive of `dist/` folder: `trqp-v2.0-dist.zip`
  ```
  cd dist && zip -r ../trqp-v2.0-dist.zip . -x "*.DS_Store"
  ```
- [ ] Verify zip contains:
  - `index.html` (main spec document)
  - `swagger.yaml` (API definition)
  - `images/` (all referenced images)
  - `v2/` (bindings, core, images subdirectories)
- [ ] Confirm permalink URL with webmaster
- [ ] Send zip + permalink instructions to webmaster
- [ ] Verify hosted version renders correctly at permalink

## Package: Zenodo

Deliver a **zip archive** of all contents plus a **PDF with link and instructions**.

- [ ] Create Zenodo archive: `trqp-v2.0-zenodo.zip` containing:
  - Full `dist/` folder (same as webmaster package)
  - `LICENSE`
  - `README.md` (or a Zenodo-specific readme with context)
- [ ] Generate PDF cover page (`trqp-v2.0-zenodo-cover.pdf`) containing:
  - Specification title and version
  - Authors / editors
  - Permalink URL to the hosted HTML specification
  - Instructions: "The authoritative version of this specification is the HTML document included in this archive and hosted at [permalink]. Open index.html to view."
  - ToIP branding / attribution as required
- [ ] Create Zenodo deposit:
  - Upload `trqp-v2.0-zenodo.zip`
  - Upload `trqp-v2.0-zenodo-cover.pdf`
  - Set metadata (title, authors, license, keywords, related identifiers)
  - Set publication date
  - Reserve DOI
- [ ] Review and publish Zenodo deposit
- [ ] Record DOI for reference in ToIP deliverable records

## Post-Release

- [ ] Confirm permalink is live and accessible
- [ ] Confirm Zenodo DOI resolves correctly
- [ ] Update any references to the spec (GitHub repo README, ToIP deliverables page)
- [ ] Tag release in git: `git tag v2.0`
- [ ] Announce release to relevant channels
