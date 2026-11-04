# DID Method Specifications

This repository contains the specifications for the `did:nda` and `did:ndc` Decentralized Identifier (DID) methods.

## Published pages

- **did:nda:** [https://did-specs.ndachain.vn/](https://did-specs.ndachain.vn/) — source: [nda/spec.md](./nda/spec.md)
- **did:ndc:** [https://did-specs.ndachain.vn/ndc/](https://did-specs.ndachain.vn/ndc/) — source: [ndc/spec.md](./ndc/spec.md)

Both specifications are served from the same Docker/Nginx image. The root URL remains the registered `did:nda` URL, while `did:ndc` is served under `/ndc/`.

## About

The `did:nda` method defines **self-sovereign, blockchain-native identifiers** anchored on **NDA Chain** — Vietnam’s sovereign permissioned blockchain for digital identity.

DIDs follow the pattern:
did:nda:0x<40-hex-address>[_ISS|_SP|_HOLDER]
**Examples:**

- `did:nda:0xdfc8044a202f08b9c8df2e42f746355575816828`

---

## Test Vectors

See [nda/examples/](./nda/examples/) for valid DID Documents:

- [nda-1.json](./nda/examples/nda-1.json)

See [ndc/examples/](./ndc/examples/) for `did:ndc` examples:

- [ndc-1.json](./ndc/examples/ndc-1.json)

---

## Governance

- **Authority**: The **NDA Chain** and the associated **Verifiable Data Registry (VDR)** are maintained by **Vietnam’s National Data Center**.
- **Maintainer**: The resolution service (`resolver.ndadid.vn`) is operated and maintained by **Vietnam’s National Data Center**.
- **Process to obtain a DID**: Generate a key pair, create the DID Document locally, store it in the VDR's off-chain storage, and publish the corresponding registration information to NDA Chain.
- **Contact**: contact@ndachain.vn
- **Specification versioning**: [Semantic Versioning](https://semver.org/)
- **Change management**: Issues and pull requests in this repository

---

## References

- [W3C DID Core](https://www.w3.org/TR/did-core/)
- [W3C DID Resolution](https://www.w3.org/TR/did-resolution/)
- [W3C Verifiable Credentials](https://www.w3.org/TR/vc-data-model/)
