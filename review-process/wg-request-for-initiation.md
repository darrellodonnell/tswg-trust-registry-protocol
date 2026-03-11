# Request for Initiation of Approved Deliverable Process

Submit via: [Google Form](https://docs.google.com/forms/d/e/1FAIpQLSd-PX648W62NaDjV65y4xdZiJ_PubVVBhbeOUILrAtR80dq5Q/viewform)

Source process: [ToIP Approved Deliverable Process](https://docs.google.com/document/d/1Flg39S4grM9xWfqXjHILdn_Y_cUg5x_EgUftQbIwySc/edit?usp=sharing)

---

## Brief Description

<!-- REQUIRED: A brief description of the WG Approved Draft submitted for review. -->

The Trust Registry Query Protocol (TRQP) v2.0 is a lightweight, read-only protocol for querying authoritative data from trust registries — analogous to what DNS is to name servers, but for digital trust ecosystems. It defines a standard data model, query vocabulary, and transport binding enabling interoperability across trust ecosystems regardless of their internal trust architecture.

TRQP v2.0 specifies two normative query types: **Authorization Queries** ("Has Authority A authorized Entity B to take Action X on Resource Y?") and **Recognition Queries** ("Does Authority X recognize Entity B as an authority?"). The specification adopts the PARC (Principal, Action, Resource, Context) information model, defines formal JSON schemas for request/response messages, and includes an HTTPS binding with RFC 7807-compliant error handling.

This deliverable has completed two Public Review periods (PR 01: April–May 2025; PR 02: December 2025–January 2026), with all issues resolved.

## Links to WG Approved Deliverables

<!-- REQUIRED: Link(s) to the WG Approved Deliverables for review. -->

- **Rendered (HTML):** <!-- e.g. https://trustoverip.github.io/tswg-trust-registry-protocol/ -->
- **Source (Markdown):** <!-- e.g. https://github.com/trustoverip/tswg-trust-registry-protocol -->

---

## Deliverable Information

- **Deliverable Name:** Trust Registry Query Protocol (TRQP) v2
- **Deliverable Type:** Specification
- **Working Group:** Technology Stack Working Group (TSWG)
- **Task Force:** Trust Registry Task Force (TRTF)
- **Date of WG Approval:** <!-- date the WG approved the deliverable -->
- **DOI:** 10.5281/zenodo.18789010

---

## 1. Summary of Major Changes

<!-- REQUIRED if applicable: Summary of major changes since the previous version. -->

TODO

## 2. Public Review Feedback Report

<!-- REQUIRED: A summary report on the feedback received during the Public Review process(es), and how any feedback was resolved. -->

### Public Review Period(s)

| Round | Start Date | End Date | Duration | Comments Received |
|-------|-----------|----------|----------|-------------------|
| PR 01 | 2025.04.09 | 2025.05.10 | 30+ days |  |
| PR 02 (if needed) | 2025.12.11 | 2026.01.16 | 15+ days |  |

#### PR 01 (2025-04-09 to 2025-05-10)

- [Announcement](https://www.lfdecentralizedtrust.org/blog/trust-registry-query-protocol-trqp-v2.0-now-open-for-public-review)
- GitHub Issues received during PR 01:

| # | Title | Created | State | Labels |
|---|-------|---------|-------|--------|
| [#113](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/113) | [Improvement] Issues with the documentation of status codes | 2025-04-09 | CLOSED | backlogged, PR01 |
| [#115](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/115) | [Improvement] Should add a response code if an authorization context is not met | 2025-04-10 | CLOSED | PR01 |
| [#116](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/116) | [Authorization Query] Why parameter names does not match Authority Statement model? | 2025-04-10 | CLOSED | |
| [#117](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/117) | [Improvement] Signed Responses: Query param proof | 2025-04-11 | CLOSED | PR01 |
| [#118](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/118) | [Improvement] Add a TSP binding | 2025-04-17 | CLOSED | PR01 |
| [#121](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/121) | [High-Level Architecture] Trust Registry Operator(s) | 2025-04-23 | CLOSED | PR01 |
| [#122](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/122) | [EDITORIAL] Suggested Editorial fixes | 2025-04-30 | CLOSED | PR01 |
| [#123](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/123) | [EDITORIAL] JSON Example Requests are confusing | 2025-04-30 | CLOSED | |
| [#124](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/124) | [RESTFUL Binding] HTTP Binding's should only use query parameters | 2025-04-30 | CLOSED | |
| [#127](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/127) | [Enhancement] Scopes in recognition & delegation queries | 2025-04-30 | CLOSED | |

#### PR 02 (2025-12-11 to 2026-01-16)

- [Announcement](https://www.lfdecentralizedtrust.org/blog/toip-announces-public-review-02-of-the-trust-registry-query-protocol-trqp-specification-v2.0)
- GitHub Issues received during PR 02:

| # | Title | Created | State | Labels |
|---|-------|---------|-------|--------|
| [#166](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/166) | Tweaks to readme.md and permission to propose PRs | 2026-01-07 | CLOSED | |
| [#168](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/168) | Complete/remove "[TODO—normative reference]" statements in section 5 | 2026-01-07 | CLOSED | |
| [#169](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/169) | Sections 6 on - normative or non-normative? | 2026-01-07 | CLOSED | |
| [#170](https://github.com/trustoverip/tswg-trust-registry-protocol/issues/170) | Comments on Public Review | 2026-01-09 | CLOSED | |

### Feedback Summary

#### PR 01 Themes

PR 01 generated 10 issues from multiple external reviewers. Feedback clustered into four themes:

1. **Status codes and error handling** — Reviewers identified overloaded status codes (e.g. TRQP-200 used for three distinct meanings) and requested additional response codes for missing context parameters. Resolution: Custom TRQP status codes were deferred in favor of standard HTTP status codes; a generic `context` parameter was added to the query model to support use cases like session-based access.

2. **Naming consistency and terminology** — Parameter names in the API did not align with the Authority Statement model (e.g. `ecosystem_id` vs `authority_id`); the term "authorization" was overloaded between the query subject and access-control semantics; "scope" overlapped with OAuth terminology. Resolution: Parameters were standardized to `entity_id`, `assertion_id`, and `authority_id` throughout. Scope handling was left to bindings. Terminology was tightened across the spec.

3. **API design and binding architecture** — Reviewers questioned the use of JSON examples in the abstract protocol layer, debated path vs. query parameters in the RESTful binding, and proposed additional bindings (TSP, signed responses). Resolution: JSON examples were removed from the abstract spec. The RESTful binding was refactored. TSP binding was deemed out of scope for TRQP. Signed responses via a `proof` query parameter were explored but deferred to profile-level specification.

4. **Architecture and editorial** — Feedback that the high-level architecture diagram should show multiple trust registry operators (1..n), and various editorial fixes (broken links, inconsistent parameter names between spec and OpenAPI, missing status codes). Resolution: Architecture description was updated; editorial fixes were applied.

#### PR 02 Themes

PR 02 generated 4 issues, reflecting a more mature spec with feedback focused on completeness:

1. **Normative status of sections** — Sections 6 onward did not declare whether they were normative or informative. Resolution: Sections 6-8 were marked normative; sections 9-11 were marked informative. Normative keywords (e.g. MUST) were lowercased in informative sections.

2. **Residual TODOs** (#168) — Three instances of "[TODO—normative reference]" remained in the Identifiers section. Resolution: References were completed and TODOs removed.

3. **Inaccurate examples and model refinement** — Reviewer noted that examples in sections 4.2.1 and 4.2.2 inaccurately described real-world authorization relationships (AAMVA/DMV, France/Germany passports). Also proposed that authorization and delegation queries could be generalized as forms of "recognition." Resolution: Example wording was corrected. The generalization proposal was noted as valuable input but the existing three-query-type model was retained for v2.

4. **Repository access and editorial** — New reviewer needed repo permissions to contribute; minor typos in README. Resolution: Permissions granted; README corrections merged via PR #167.

### Resolution of Comments

All issues from both Public Review periods have been closed. The substantial changes made between PR 01 and PR 02 (parameter renaming, removal of custom status codes, refactoring of bindings, normative/informative section marking) warranted the second Public Review period (PR 02, 15+ days). PR 02 feedback was largely editorial and completeness-related, confirming that the major structural issues from PR 01 had been addressed.

## 3. Review Type Requested

<!-- REQUIRED: Standard or Expedited, with any relevant dates or deadlines. -->

- **Review Type:** Standard / Expedited *(choose one)*
- **Relevant Dates/Deadlines:** <!-- e.g. upcoming industry conferences, publication targets -->
- **Rationale (if expedited):** <!-- why expedited review is needed -->

## 4. Proposed Review Committee Members

<!-- REQUIRED: A recommended committee consists of at least three members — a Steering Committee member (chair), someone closely involved with the work, and someone not directly involved but may have passing familiarity. Include any proposed external experts. -->

Eric Drury (Review Committee Chair, SC Member), Drummond Reed (SC Member, TSWG Co-Chair), Tim Bouma (external, passing familiary, standards expert), and Darrell O'Donnell (TRTF Chair)


| Name | Proposed Role | Affiliation | Involvement Level | Expertise Area |
|------|--------------|-------------|-------------------|----------------|
| | Chair (SC Member) | | Not directly involved | |
| | Member | | Closely involved | |
| | Invited Expert | | Not directly involved | |

### External Expert Justification

<!-- The invited experts MUST include experts from the problems/requirements space and from the solutions space. Document their background and relevance. -->

TODO

---

## Supporting Documents

<!-- These are prepared as part of the Review Package (submitted separately or alongside). -->

- [ ] [Review Committee Report (draft)](review-committee-report.md)
- [ ] [Review Committee Checklist (draft)](review-committee-checklist.md)

## Submission Checklist

- [ ] WG has followed the [Stages of Development](https://lf-toip.atlassian.net/wiki/spaces/HOME/pages/22996901/Stages+of+Development+for+Working+Groups+Task+Forces) process
- [ ] Deliverable has WG approval
- [ ] Public Review of 30+ calendar days completed
- [ ] All Public Review comments resolved
- [ ] This form submitted and SC co-chairs notified
- [ ] Review Package prepared for submission to SC co-chairs
