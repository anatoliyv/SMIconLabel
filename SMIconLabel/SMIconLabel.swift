//
//  SMIconLabel.swift
//  SMIconLabel
//
//  Created by Anatoliy Voropay on 5/19/15.
//  Copyright (c) 2015 Smartarium.com. All rights reserved.
//

import UIKit

///
/// Icon horizontal position toward text
///
public enum SMIconHorizontalPosition {
    case Left
    case Right
}

///
/// Icon vertical position
///
public enum SMIconVerticalPosition {
    case Top
    case Center
    case Bottom
}

///
/// `UILabel` with possibility to place small icon on the left or on the right side.
/// The only limitation is that `numberOfLines` property should be 1 otherwise icon 
/// will be ignored.
///
public class SMIconLabel: UILabel {

    public typealias SMIconPosition = (horizontal: SMIconHorizontalPosition, vertical: SMIconVerticalPosition)
    
    /// Image that will be placed with a text
    public var icon: UIImage? {
        didSet {
            if icon == nil {
                iconView?.removeFromSuperview()
            }
        }
    }
    
    /// Position of an image
    public var iconPosition: SMIconPosition = ( .Left, .Top )
    
    /// Additional spacing between text and image
    public var iconPadding: CGFloat = 0
    
    // MARK: Privates
    
    private var iconView: UIImageView?
    
    // MARK: Custom text drawings
    
    public override func drawTextInRect(rect: CGRect) {
        guard let text = self.text as NSString? else { return }
        guard let icon = icon else {
            super.drawTextInRect(rect)
            return
        }
        
        iconView?.removeFromSuperview()
        iconView = UIImageView(image: icon)

        var newRect: CGRect = CGRectZero
        let size = text.boundingRectWithSize(CGSizeMake(frame.width - icon.size.width - iconPadding, CGFloat.max),
                                             options: NSStringDrawingOptions.UsesLineFragmentOrigin,
                                             attributes: [ NSFontAttributeName : font ],
                                             context: nil).size

        guard let iconView = iconView else { return }
        let iconYPosition = (frame.height - iconView.frame.height) / 2
        let height = frame.height

        if iconPosition.horizontal == .Left {
            if textAlignment == .Left {
                iconView.frame = CGRectOffset(iconView.frame, 0, iconYPosition)
                newRect = CGRectMake(iconView.frame.width + iconPadding, 0, frame.width - (iconView.frame.width + iconPadding), height)
            } else if textAlignment == .Right {
                iconView.frame = CGRectOffset(iconView.frame, frame.width - size.width - iconView.frame.width - iconPadding, iconYPosition)
                newRect = CGRectMake(frame.width - size.width - iconPadding, 0, size.width + iconPadding, height)
            } else if textAlignment == .Center {
                iconView.frame = CGRectOffset(iconView.frame, (frame.width - size.width) / 2 - iconPadding - iconView.frame.width, iconYPosition)
                newRect = CGRectMake((frame.width - size.width) / 2, 0, size.width + iconPadding, height)
            }
        } else if iconPosition.horizontal == .Right {
            if textAlignment == .Left {
                iconView.frame = CGRectOffset(iconView.frame, size.width + iconPadding, iconYPosition)
                newRect = CGRectMake(0, 0, size.width, height)
            } else if textAlignment == .Right {
                iconView.frame = CGRectOffset(iconView.frame, frame.width - iconView.frame.width, iconYPosition)
                newRect = CGRectMake(frame.width - size.width - iconView.frame.width - iconPadding, 0, size.width, height)
            } else if textAlignment == .Center {
                iconView.frame = CGRectOffset(iconView.frame, frame.width / 2 + size.width / 2 + iconPadding, iconYPosition)
                newRect = CGRectMake((frame.width - size.width) / 2, 0, size.width, height)
            }
        }

        switch iconPosition.vertical {
        case .Top:
            iconView.frame.origin.y = (frame.height - size.height) / 2

        case .Center:
            iconView.frame.origin.y = (frame.height - iconView.frame.height) / 2

        case .Bottom:
            iconView.frame.origin.y = frame.height - (frame.height - size.height) / 2 - iconView.frame.size.height
        }

        addSubview(iconView)
        super.drawTextInRect(newRect)
    }
}
