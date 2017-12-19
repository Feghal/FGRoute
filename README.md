# FGRoute

[![Version](https://img.shields.io/cocoapods/v/FGRoute.svg?style=flat)](http://cocoapods.org/pods/FGRoute)
[![License](https://img.shields.io/cocoapods/l/FGRoute.svg?style=flat)](http://cocoapods.org/pods/FGRoute)
[![Platform](https://img.shields.io/cocoapods/p/FGRoute.svg?style=flat)](http://cocoapods.org/pods/FGRoute)

FGRoute is a library that developted on c and ObjC(with Swift support), FGRoute is library to help developers get info from wifi interfaces.

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

iOS 8 and later.

## Installation

FGRoute is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "FGRoute"
```

## Usage

With FGRoute you can easily get your ip address, Route, ssid etc.

Full method documentation for Swift

```swift
FGRoute.getGatewayIP() //route ip address

FGRoute.getSSID() // Connected wifi name

FGRoute.getBSSID() // Connected wifi BSSID

FGRoute.getSSIDDATA() // Connected wifi SSIDDATA

FGRoute.getIPAddress() // Your local ip address in network
```

Full method documentation for ObjC

```objective-c

[FGRoute getGatewayIP]; //route ip address

[FGRoute getSSID]; // Connected wifi name

[FGRoute getBSSID]; // Connected wifi BSSID

[FGRoute getSSIDDATA]; // Connected wifi SSIDDATA

[FGRoute getIPAddress]; // Your local ip address in network
```

## Author

Arthur Sahakyan

## License

FGRoute is available under the MIT license. See the LICENSE file for more info.
