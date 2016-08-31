//
//  ViewController.swift
//  SMIconLabel
//
//  Created by Anatoliy Voropay on 5/19/15.
//  Copyright (c) 2015 Smartarium.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        let image = UIImage(named: "Bell")
        var y: CGFloat = 80

        for index in 0..<6 {
            let label = SMIconLabel(frame: CGRectMake(20, y, view.frame.size.width - 20 * 2, 30))
            label.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.1)
            label.font = UIFont.systemFontOfSize(12)
            label.textColor = UIColor.whiteColor()
            label.icon = image
            label.clipsToBounds = true
            label.layer.cornerRadius = 4

            switch index {
            case 0:
                label.text = "Icon on the left, text on the left"
                label.iconPosition = .Left
                label.textAlignment = .Left

            case 1:
                label.text = "Icon on the right, text on the left"
                label.iconPosition = .Right
                label.textAlignment = .Left

            case 2:
                label.text = "Icon on the left, text on the right"
                label.iconPosition = .Left
                label.textAlignment = .Right

            case 3:
                label.text = "Icon on the right, text on the right"
                label.iconPosition = .Right
                label.textAlignment = .Right

            case 4:
                label.text = "Icon on the left, text on the center"
                label.iconPosition = .Left
                label.textAlignment = .Center

            case 5:
                label.text = "Icon on the right, text on the center"
                label.iconPosition = .Right
                label.textAlignment = .Center

            default:
                break
            }

            view.addSubview(label)
            y += 50
        }
    }

    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
}

