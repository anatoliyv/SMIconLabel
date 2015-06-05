# SMIconLabel

![CocoaPods](https://img.shields.io/cocoapods/v/SMIconLabel.svg)

UILabel with possibility to place small icon on the left or on the right side. Take a look at preview image or build smaple app to see how it works.

![Preview](https://raw.githubusercontent.com/anatoliyv/SMIconLabel/master/Main/screenshot.png)

**Note:** To make icon works as expected you should set `numberOfLines = 0` for SMIconLabel

### Installation

This repo has an example project, but if you want to include SMIconLabel you need only one file **SMIconLabel.swift**. Alternatively you can use CocoaPods to install:

```
pod 'SMIconLabel'
```

### Usage

Usage is as simple as possible. Here is an swift example:

```
var labelLeft = SMIconLabel(frame: CGRectMake(10, 10, view.frame.size.width - 20, 20))
labelLeft.text = "Icon on the left, text on the left"

// Here is the magic
labelLeft.icon = UIImage(named: "Bell") // Set icon image
labelLeft.iconPadding = 5               // Set padding between icon and label
labelLeft.numberOfLines = 0             // Required
labelLeft.iconPosition = SMIconLabelPosition.Left // Icon position
view.addSubview(labelLeft)
```

### License

The MIT License (MIT)

Copyright (c) 2015 Anatoliy

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
