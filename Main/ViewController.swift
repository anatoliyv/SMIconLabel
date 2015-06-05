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
        
        view.backgroundColor = UIColor.purpleColor()
        
        var image = UIImage(named: "Bell")
        
        var labelLeft = SMIconLabel(frame: CGRectMake(20, 50, view.frame.size.width - 20 * 2, 30))
        var labelLeft2 = SMIconLabel(frame: CGRectMake(20, 50 * 2, view.frame.size.width - 20 * 2, 30))
        var labelRight = SMIconLabel(frame: CGRectMake(20, 50 * 3, view.frame.size.width - 20 * 2, 30))
        var labelRight2 = SMIconLabel(frame: CGRectMake(20, 50 * 4, view.frame.size.width - 20 * 2, 30))
        var labelCenter = SMIconLabel(frame: CGRectMake(20, 50 * 5, view.frame.size.width - 20 * 2, 30))
        var labelCenter2 = SMIconLabel(frame: CGRectMake(20, 50 * 6, view.frame.size.width - 20 * 2, 30))
        
        labelLeft.text = "Icon on the left, text on the left"
        labelLeft2.text = "Icon on the right, text on the left"
        labelRight.text = "Icon on the left, text on the right"
        labelRight2.text = "Icon on the right, text on the right"
        labelCenter.text = "Icon on the left, text on the center"
        labelCenter2.text = "Icon on the right, text on the center"
        
        labelLeft.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        labelLeft2.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        labelRight.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        labelRight2.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        labelCenter.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        labelCenter2.backgroundColor = UIColor.blackColor().colorWithAlphaComponent(0.2)
        
        labelLeft.font = UIFont.systemFontOfSize(12)
        labelLeft2.font = UIFont.systemFontOfSize(12)
        labelRight.font = UIFont.systemFontOfSize(12)
        labelRight2.font = UIFont.systemFontOfSize(12)
        labelCenter.font = UIFont.systemFontOfSize(12)
        labelCenter2.font = UIFont.systemFontOfSize(12)
        
        labelLeft.textColor = UIColor.whiteColor()
        labelLeft2.textColor = UIColor.whiteColor()
        labelRight.textColor = UIColor.whiteColor()
        labelRight2.textColor = UIColor.whiteColor()
        labelCenter.textColor = UIColor.whiteColor()
        labelCenter2.textColor = UIColor.whiteColor()
        
        labelLeft.icon = image
        labelLeft2.icon = image
        labelRight.icon = image
        labelRight2.icon = image
        labelCenter.icon = image
        labelCenter2.icon = image
        
        labelLeft.clipsToBounds = true
        labelLeft2.clipsToBounds = true
        labelRight.clipsToBounds = true
        labelRight2.clipsToBounds = true
        labelCenter.clipsToBounds = true
        labelCenter2.clipsToBounds = true
        
        labelLeft.layer.cornerRadius = 4
        labelLeft2.layer.cornerRadius = 4
        labelRight.layer.cornerRadius = 4
        labelRight2.layer.cornerRadius = 4
        labelCenter.layer.cornerRadius = 4
        labelCenter2.layer.cornerRadius = 4
        
        labelLeft.iconPadding = 5
        labelLeft2.iconPadding = 5
        labelRight.iconPadding = 5
        labelRight2.iconPadding = 5
        labelCenter.iconPadding = 5
        labelCenter2.iconPadding = 5
        
        labelLeft.iconPosition = .Left
        labelLeft.textAlignment = .Left
        
        labelLeft2.iconPosition = .Right
        labelLeft2.textAlignment = .Left
        
        labelRight.iconPosition = .Left
        labelRight.textAlignment = .Right
        
        labelRight2.iconPosition = .Right
        labelRight2.textAlignment = .Right
        
        labelCenter.iconPosition = .Left
        labelCenter.textAlignment = .Center
        
        labelCenter2.iconPosition = .Right
        labelCenter2.textAlignment = .Center
        
        view.addSubview(labelLeft)
        view.addSubview(labelLeft2)
        view.addSubview(labelRight)
        view.addSubview(labelRight2)
        view.addSubview(labelCenter)
        view.addSubview(labelCenter2)
    }

}

