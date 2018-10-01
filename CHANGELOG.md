# Vandelay Changelog


## 0.7.2

This version is just published to conform to Vandelay 0.7.2. It splits
up the three Vandelay projects into separate repositories, but it does
not contain any breaking changes, except that the `qrCode` import case
has been temp replaced by a `custom(name: "qrCode")` one.


## 0.7.1

Vandelay 0.7.1 was just a temporary version while splitting up the lib
into separate repositories. It shouldn't be used.


## 0.7.0

This version migrates Vandelay to Swift 4.2. For now, the tests do run
and everything builds correctly, but the example app has problems with
linking the frameworks correctly. I'll create a GitHub issue for this.


## 0.6.0

This version migrates Vandelay to Swift 4 and adds Codable support. It
is very different from the previous 0.5.0 version.

Since Vandelay will now use Swift´s built in coding capabilities, some
features are no longer needed. The `Encoding` has therefore been moved
to my util library iExtra, which can be found [here](https://github.com/danielsaidi/iExtra).

I have also removed all UI components, like the exporter alert. It's a
lot easier and cleaner to implement an exporter picker yourself.

All in all, there are a lot of changes in this version. Do not compare
it with the old one.