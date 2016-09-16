//
//  ViewController.swift
//  SMIconLabel
//
//  Created by Anatoliy Voropay on 5/19/15.
//  Copyright (c) 2015 Smartarium.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let image = UIImage(named: "Bell")
        var y: CGFloat = 80

        for index in 0..<6 {
            let label = SMIconLabel(frame: CGRect(x: 20, y: y, width: view.frame.size.width - 20 * 2, height: 60))
            label.backgroundColor = UIColor.black.withAlphaComponent(0.1)
            label.font = UIFont.systemFont(ofSize: 12)
            label.textColor = UIColor.white
            label.numberOfLines = 0
            label.icon = image
            label.iconPadding = 5
            label.clipsToBounds = true
            label.layer.cornerRadius = 4

            let topAlignment: SMIconVerticalPosition = .top

            switch index {
            case 0:
                label.text = "Icon on the left, text on the left"
                label.iconPosition = ( .left, topAlignment )
                label.textAlignment = .left

            case 1:
                label.text = "Icon on the right, text on the left"
                label.iconPosition = ( .right, topAlignment )
                label.textAlignment = .left

            case 2:
                label.text = "Icon on the left, text on the right"
                label.iconPosition = ( .left, topAlignment )
                label.textAlignment = .right

            case 3:
                label.text = "Icon on the right, text on the right"
                label.iconPosition = ( .right, topAlignment )
                label.textAlignment = .right

            case 4:
                label.text = "Icon on the left, text on the center"
                label.iconPosition = ( .left, topAlignment )
                label.textAlignment = .center

            case 5:
                label.text = "Icon on the right, text on the center"
                label.iconPosition = ( .right, topAlignment )
                label.textAlignment = .center

            default:
                break
            }

            // Uncomment to test multilines
            // label.text = label.text! + ". This is much longer text to check how SMIconLabel wil work with numberOfLines != 1"
            // label.adjustsFontSizeToFitWidth = false

            view.addSubview(label)
            y += 70
        }
    }

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

