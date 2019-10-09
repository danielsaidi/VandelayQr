<p align="center">
    <img src ="Resources/Logo-540.png" width="540" alt="VandelayQr logo" />
</p>

<p align="center">
    <a href="https://github.com/danielsaidi/VandelayQr">
        <img src="https://badge.fury.io/gh/danielsaidi%2FVandelayQr.svg?style=flat" alt="Version" />
    </a>
    <img src="https://img.shields.io/cocoapods/p/VandelayQr.svg?style=flat" alt="Platform" />
    <img src="https://img.shields.io/badge/Swift-5.1-orange.svg" alt="Swift 5.1" />
    <img src="https://badges.frapsoft.com/os/mit/mit.svg?style=flat&v=102" alt="License" />
    <a href="https://twitter.com/danielsaidi">
        <img src="https://img.shields.io/badge/contact-@danielsaidi-blue.svg?style=flat" alt="Twitter: @danielsaidi" />
    </a>
</p>


## About

VandelayQr adds QR code support to [Vandelay][Vandelay]. It adds a `QrCodeImporter` that can import strings and data by scanning QR codes. It also provides tools for creating QR code images from any URL.


## Installation

### Swift Package Manager

The easiest way to add VandelayQr to your project is to use Swift Package Manager:
```
https://github.com/danielsaidi/VandelayQr.git
```

### Cocoapods

```ruby
pod "VandelayQr"
```

### Carthage

```ruby
github "danielsaidi/Vandelay"
```


## Exporting data

VandelayQR has no data exporters, but you can use the `QrCodeGenerator` protocol and `StandardQrCodeGenerator` implementation to create QR code images with urls that contain importable data.


## Importing data

If you add `VandelayQr`, you get access to the following importer:

- `QrCodeImporter` - imports `strings` and `data` by scanning QR codes

To use this importer, you must add `NSCameraUsageDescription` to `Info.plist`. Otherwise, the app will crash. You must also configure `NSAppTransportSecurity` in `Info.plist` to make sure that the app can fetch the scanned url. 

The demo app has `NSAllowsArbitraryLoads` set to `true`. For real world apps, this is considered a bad practice.


## Demo App

This repo contains a demo app that lets you import data by scanning a QR code. To run the demo app, open and run the `VandelayQr.xcodeproj` project.


## Contact me

I hope you like this library. Feel free to reach out if you have questions or if
you want to contribute in any way:

* E-mail: [daniel.saidi@gmail.com][Email]
* Twitter: [@danielsaidi][Twitter]
* Web site: [danielsaidi.com][Website]


## License

Vandelay is available under the MIT license. See the LICENSE file for more info.

[Email]: mailto:daniel.saidi@gmail.com
[Twitter]: http://www.twitter.com/danielsaidi
[Website]: http://www.danielsaidi.com

[Vandelay]: https://github.com/danielsaidi/Vandelay
[VandelayDropbox]: https://github.com/danielsaidi/VandelayDropbox
[VandelayQR]: https://github.com/danielsaidi/VandelayQr

[License]: https://github.com/danielsaidi/Vandelay/blob/master/LICENSE