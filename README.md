<p align="center">
    <img src ="Assets/logo-900.png" width="450" alt="Vandelay logo" />
</p>


# VandelayQR

[![Version](https://badge.fury.io/gh/danielsaidi%2FVandelayQr.svg?style=flat)](http://badge.fury.io/gh/danielsaidi%2FVandelayQr)
[![Carthage](https://img.shields.io/badge/carthage-supported-green.svg?style=flat)](vandelayqr)
[![CocoaPods](https://img.shields.io/cocoapods/v/VandelayQr.svg?style=flat)](pod)
![Platform](https://img.shields.io/cocoapods/p/VandelayQr.svg?style=flat)
[![License](https://badges.frapsoft.com/os/mit/mit.svg?style=flat&v=102)](https://github.com/ellerbrock/open-source-badge/)


## About

VandelayQR adds QR code support to [Vandelay](vandelay). It includes a
QR code importer that can import strings and data by scanning QR codes.
It also has a class that can create QR code images from URLs.


## Installation

### Cocoapods

If you use [CocoaPods](cocoapods), add this line to your `Podfile` and
run `pod install`:

```ruby
pod "VandelayQr"
```

This also installs [Vandelay](vandelay) and [QRCodeReader](qrcodereader).

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

VandelayQR gives you access to the `QrCodeImporter` importer. It makes
it possible to import strings and data by scanning QR codes.

To use this feature, make sure to specify a `NSCameraUsageDescription`
text in Info.plist. Otherwise, the app will crash. Also make sure that
the app can access the scanned url. The demo does this by allowing any
urls to be imported. In a real world app, allowing arbitary urls isn't
probably a good idea :)


## Example Project

Vandelay comes with an example project that lets you import todo lists
(strings) and photos (data) by scanning a QR code.

Before you can run the example app, you have to install `Carthage` and
run `carthage update --platform iOS`. This will setup all dependencies
and prepare the app. You can then open the project and run the app.

For QR codes, you can use the built-in `QrCodeGenerator` to generate a
scannable QR code for any url you have exported data to, e.g. by using
the [Vandelay](vandelay) example project. You can then run the example
project from your phone and scan that code to import data into the app.


## Versioning

Versions < 1.0.0 will have breaking changes between minor versions, so
you may have to adjust your code or use specific versions.


## Author

Daniel Saidi, daniel.saidi@gmail.com


## License

VandelayQR is available under the MIT license. See the LICENSE file for more info.


[carthage]: https://github.com/Carthage
[cocoapods]: http://cocoapods.org
[pod]: http://cocoapods.org/pods/VandelayQr
[qrcodereader]: https://github.com/yannickl/QRCodeReader.swift
[vandelay]: https://github.com/danielsaidi/Vandelay
[vandelayqr]: https://github.com/danielsaidi/VandelayQr