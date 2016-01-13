//
//  BackGround.swift
//  vagetableSale
//
//  Created by wusuchen on 2016/1/8.
//
//

import UIKit

class BackGround: UIView {

    override func drawRect(rect: CGRect) {
        
        // Background View
        
        //// Color Declarations
        let yellow: UIColor = UIColor(red: 255/255.0, green: 204/255.0, blue: 0/255.0, alpha: 1.000)
        let orange : UIColor = UIColor(red: 255/255.0, green: 180/255.0, blue: 0/255.0, alpha: 1.000)
        
        let context = UIGraphicsGetCurrentContext()
        
        //// Gradient Declarations
        let yellowGradient = CGGradientCreateWithColors(CGColorSpaceCreateDeviceRGB(), [yellow.CGColor, orange.CGColor], [0, 1])
        
        //// Background Drawing
        let backgroundPath = UIBezierPath(rect: CGRectMake(0, 0, self.frame.width, self.frame.height))
        CGContextSaveGState(context)
        backgroundPath.addClip()
        CGContextDrawLinearGradient(context, yellowGradient,
            CGPointMake(160, 0),
            CGPointMake(160, 800),
            [.DrawsBeforeStartLocation, .DrawsAfterEndLocation])
        CGContextRestoreGState(context)
        
    }
    


}
