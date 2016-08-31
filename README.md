# SMIconLabel

![CocoaPods](https://img.shields.io/cocoapods/v/SMIconLabel.svg)

UILabel with possibility to place small icon on the left or on the right side. Take a look at preview image or build smaple app to see how it works.

![Preview](https://raw.githubusercontent.com/anatoliyv/SMIconLabel/master/Main/screenshot.png)

**Note:** To make icon works as expected you should set `numberOfLines = 1` for SMIconLabel

### Installation

This repo has an example project, but if you want to include SMIconLabel you need only one file **SMIconLabel.swift**. Alternatively you can use CocoaPods to install:

```
pod 'SMIconLabel'
```

### Usage

Usage is as simple as possible. Here is an swift example:

```
let labelLeft = SMIconLabel(frame: CGRectMake(10, 10, view.frame.size.width - 20, 20))
labelLeft.text = "Icon on the left, text on the left"

// Here is the magic
labelLeft.icon = UIImage(named: "Bell") // Set icon image
labelLeft.iconPadding = 5               // Set padding between icon and label
labelLeft.numberOfLines = 0             // Required
labelLeft.iconPosition = .Left          // Icon position
view.addSubview(labelLeft)
```
