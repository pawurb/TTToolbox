# TTToolbox [![Build Status](https://travis-ci.org/pawurb/TTToolbox.svg)](https://travis-ci.org/pawurb/TTToolbox) [![Pod version](https://badge.fury.io/co/TTToolbox.svg)](https://badge.fury.io/co/TTToolbox)[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)


More or less a stuff I miss from Ruby when working with Swift.

Work in progress.

## Installation

### Carthage

```bash
$ brew update
$ brew install carthage
```

In your `Cartfile`:

```ogdl
github "TTToolbox" ~> 0.0.4
```

Run `carthage update` to build the framework and drag the built `TTToolbox.framework` into your Xcode project.

### Cocoapods

```bash
$ gem install cocoapods
```

In your `Podfile`:

```ruby
platform :ios, '10.0'
use_frameworks!

target 'TargetName' do
  pod 'TTToolbox'
end
```

Then, run the following command:

```bash
$ pod install
```

