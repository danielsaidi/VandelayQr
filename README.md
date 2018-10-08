<p align="center">
    <img src ="Assets/logo-900.png" width="450" alt="Vandelay logo" />
</p>

<p align="center">
    <a href="https://github.com/danielsaidi/VandelayQr">
        <img src="https://badge.fury.io/gh/danielsaidi%2FVandelayQr.svg?style=flat" alt="Version" />
    </a>
    <img src="https://api.travis-ci.org/danielsaidi/VandelayQr.svg" alt="Build Status" />
    <a href="https://cocoapods.org/pods/VandelayQr">
        <img src="https://img.shields.io/cocoapods/v/VandelayQr.svg?style=flat" alt="CocoaPods" />
    </a>
    <a href="https://github.com/Carthage/Carthage">
        <img src="https://img.shields.io/badge/carthage-supported-green.svg?style=flat" alt="Carthage" />
    </a>
    <img src="https://img.shields.io/cocoapods/p/VandelayQr.svg?style=flat" alt="Platform" />
    <img src="https://img.shields.io/badge/Swift-4.2-orange.svg" alt="Swift 4.2" />
    <img src="https://badges.frapsoft.com/os/mit/mit.svg?style=flat&v=102" alt="License" />
    <a href="https://twitter.com/danielsaidi">
        <img src="https://img.shields.io/badge/contact-@danielsaidi-blue.svg?style=flat" alt="Twitter: @danielsaidi" />
    </a>
</p>


## About

VandelayQr adds QR code support to [Vandelay](vandelay). It includes a
QR code importer that can import strings and data by scanning QR codes.
It also has a class that can create QR code images from URLs.


## Installation

### Cocoapods

If you use [CocoaPods](cocoapods), add this line to your `Podfile` and
run `pod install`:

```ruby
pod "VandelayQr"
```

This will also install [Vandelay](vandelay) and [QRCodeReader](qrcodereader).

### Carthage

If you use [Carthage](carthage), add this line to your `Cartfile` then
run `carthage update --platform iOS`:

```ruby
github "danielsaidi/Vandelay"
```

This also builds [Vandelay](vandelay) and [QRCodeReader](qrcodereader).
You must add all three frameworks to your app.


## Exporting data

VandelayQR has no data exporters, but you can use the `QrCodeGenerator`
protocol and `StandardQrCodeGenerator` implementation to create images
of QR codes, that refer to urls that contain importable data.


## Importing data

If you add `VandelayQr`, you get access to the following importer:

- `QrCodeImporter` - imports `strings` & `data` by scanning QR codes

To use this feature, make sure to specify a `NSCameraUsageDescription`
text in Info.plist. Otherwise, the app will crash. Also make sure that
the app can fetch the scanned url, by configuring the app `Info.plist`
`NSAppTransportSecurity` setting. The app has `NSAllowsArbitraryLoads`
set to `true`. For real world apps, this is considered a bad practice.


## Example Project

Before you can run the example app, you have to install `Carthage` and
run `carthage update --platform iOS`. This will setup all dependencies
and prepare the app. You can then open the project and run the app.

For QR codes, you can use the built-in `QrCodeGenerator` to generate a
scannable QR code for any url you have exported data to, e.g. by using
the [Vandelay](vandelay) example project. You can then run the example
project from your phone and scan that code to import data into the app.


## Versioning

Versions < 1.0.0 will have breaking changes between minor versions, so
VandelayQr 0.8.0 will probably not be compatible with 0.7.0 etc.


## Author

Daniel Saidi, daniel.saidi@gmail.com


## License

VandelayQr is available under the MIT license. See the LICENSE file for more info.


[carthage]: https://github.com/Carthage
[cocoapods]: http://cocoapods.org
[github]: https://github.com/danielsaidi/VandelayQr
[pod]: http://cocoapods.org/pods/VandelayQr
[qrcodereader]: https://github.com/yannickl/QRCodeReader.swift
[vandelay]: https://github.com/danielsaidi/Vandelay