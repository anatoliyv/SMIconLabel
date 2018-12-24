# SMIconLabel

[![Version](https://img.shields.io/cocoapods/v/SMIconLabel.svg?style=flat)](http://cocoapods.org/pods/SMIconLabel)
[![License](https://img.shields.io/cocoapods/l/SMIconLabel.svg?style=flat)](http://cocoapods.org/pods/SMIconLabel)
[![Platform](https://img.shields.io/cocoapods/p/SMIconLabel.svg?style=flat)](http://cocoapods.org/pods/SMIconLabel)

UILabel with possibility to place small icon on the left or on the right side. Take a look at preview image or build sample app to see how it works.

![Preview](https://raw.githubusercontent.com/anatoliyv/SMIconLabel/master/Main/screenshot.png)

### Installation

#### Manually

This repo has an example project, but if you want to include SMIconLabel you need only one file **SMIconLabel.swift**.

#### CocoaPods

Alternatively you can use CocoaPods to install:

```
pod 'SMIconLabel'
```

### Usage

Usage is as simple as possible. Here is an Swift 2.0 example:

```
let labelLeft = SMIconLabel(frame: CGRect(x: 10, y: 10, width: view.frame.size.width - 20, height: 20))
labelLeft.text = "Icon on the left, text on the left"

// Here is the magic
labelLeft.icon = UIImage(named: "Bell")    // Set icon image
labelLeft.iconPadding = 5                  // Set padding between icon and label
labelLeft.numberOfLines = 0                // Required
labelLeft.iconPosition = (.left, .top)   // Icon position
view.addSubview(labelLeft)
```

### Icon Position

Icon position should be customized via `iconPosition` property. It's defined next way:

```
typealias SMIconLabel.Position = (horizontal: SMIconLabel.HorizontalPosition, vertical: SMIconLabel.VerticalPosition)
```

In this case if you want to make icon to be placed in top-left do:

```
labelLeft.iconPosition = (.left, .top)
```
