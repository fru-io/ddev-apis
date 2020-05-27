---
name: Release Checklist Template
about: A checklist for release preparation
title: Release X.X.X
labels: ''
assignees: ''

---

## Definition of Ready: Release

### Prepare Production Release
- [ ] [Manual checklists](https://github.com/drud/ddev-live-ui/issues/233) for validation of features provided, with release tag: R<sup>Features, UX</sup>
- [ ] Code complete freeze: R<sup>Ops, Features, UX</sup> C<sup>Product</sup>
- [ ] All code in release tagged, following symantic versioning: R<sup>Ops</sup>
- [ ] Environments prepared for release: R<sup>Ops</sup>
- [ ] Release notes drafted and linked: R<sup>Ops, Features, UX</sup>
- [ ] QA for supported devices/browsers: R<sup>Features, UX</sup>
  - [ ] Manual checklists validated in `qa`: R<sup>Features, UX</sup>
  - [ ] Automated tests performed in `qa`: A<sup>Ops, Features</sup>
- [ ] Statuspage announcement of release (minimum 24 hr notice): R<sup>Ops

## Definition of Done: Release

### Perform Production Release
- [ ] All automated tests are green: A<sup>Ops, Features</sup>
- [ ] OK from team: R<sup>Ops, Features, UX</sup> C<sup>Product</sup>
- [ ] Manual checklists validated on prod: R<sup>Features, UX, Product</sup>
- [ ] Release completion announced on Statuspage: R<sup>Ops</sup>
- [ ] Release notes published: R<sup>Ops</sup> I<sup>Product, Marketing</sup>

Key: R<sup>Responsible</sup> A<sup>Accountable</sup> C<sup>Consulted</sup> I<sup>Informed</sup>
