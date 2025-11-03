# did:nda Method Specification

This repository contains the official specification for the `did:nda` Decentralized Identifier (DID) Method.

- **Specification file:** [spec.md](./spec.md)
- **Status:** Provisional (Implementer’s Draft)
- **Registry entry:** Pending submission to the [W3C DID Method Registry](https://github.com/w3c/did-extensions)

## About

The `did:nda` method defines **self-sovereign, blockchain-native identifiers** anchored on **NDA Chain** — Vietnam’s sovereign permissioned blockchain for digital identity.

DIDs follow the pattern:
did:nda:0x<40-hex-address>[_ISS|_SP|_HOLDER]
**Examples:**

- `did:nda:0xdfc8044a202f08b9c8df2e42f746355575816828`

---

## Test Vectors

See [examples/](./examples/) for valid DID Documents:

- [nda-1.json](./examples/nda-1.json) 

---

## Governance

- **Authority**: The **NDA Chain** and the associated **Verifiable Data Registry (VDR)** are maintained by **Vietnam’s National Data Center**.
- **Maintainer**: The resolution service (`resolver.ndadid.vn`) is operated and maintained by **Vietnam’s National Data Center**.
- **Process to obtain a DID**:

  1. Generate an **ECDSA Secp256k1** key pair (via wallet or custodial QTSP).
  2. Derive the Ethereum-compatible address.
  3. Publish the initial **DID Document** to the VDR via `https://resolver.ndadid.vn/1.0/identifiers` with a signed payload.
  4. Anchor the document hash on **NDA Chain** for immutability.
- **Contact**: contact@ndachain.vn
- **Specification versioning**: [Semantic Versioning](https://semver.org/)
- **Change management**: Issues and pull requests in this repository

---

## References

- [W3C DID Core](https://www.w3.org/TR/did-core/)
- [W3C DID Resolution](https://www.w3.org/TR/did-resolution/)
- [W3C Verifiable Credentials](https://www.w3.org/TR/vc-data-model/)
