# CloudX GAM Prebid integration Swift package

This repository distributes the GAM Prebid integration for the CloudX iOS SDK.

## Requirements

- iOS 13 or later
- Xcode 16 or later
- CloudX Core 3.9.1 or later

## Installation

Add this package in Xcode:

```text
https://github.com/cloudx-io/cloudx-ios-swift-package-integration-gam-prebid.git
```

Select an exact package version from the compatibility table. Add the
`CloudXGAMPrebid` product to the app target.

Add `-ObjC` to the app target's **Other Linker Flags**. The package uses this
flag to retain the CloudX registration code.

| Package version | CloudX integration | Google Mobile Ads SDK |
| --- | --- | --- |
| `1.0.0` | `1.0.0` | `13.0.0` or later |

The package installs CloudX Core and Google Mobile Ads SDK as dependencies. Import `CloudXCore` and `CloudXGAMPrebid` in the application.

## Versioning

The package version is the integration version, for example `1.0.0`.

## License

The CloudX integration uses the Business Source License 1.1. See [LICENSE](LICENSE).
