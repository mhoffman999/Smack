//
//  GradientView.swift
//  Smack App
//
//  Created by Michael Hoffman on 3/20/19.
//  Copyright © 2019 Here We Go. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    //Will create a gradient for run-time, and with IBDesignable will see in Storyboard view
    
    //The custom variables below will be added to the "Attirbutes" of the object that adopts this sub-class in order to change the properties of the custom view
    
    //This variable will make a color picker appear in Attributes
    //If a color is listed in the variable, it will become the "Default" color
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) {
        //"didSet": once a change has been made, the layout needs to be updated dynamically
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    //This func must be overridden so that it knows what to do when 'setNeedsLayout" is called in the functions above
    //Will create the layer and add it to the UIView subclass
    override func layoutSubviews() {
        
        let gradientLayer = CAGradientLayer()
        
        //requires an array of CGcolors
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        
        //provide the start & end points: pi/2 will make a horizontal gradient
        //UIViews have their own coordinate system:
        // Top-Left aka origin (0,0), Top-Right (1,0), Bottom-Left (0,1), Bottom-Right (1,1)
        //Change the coordinate values (0 thru 1)to "slide" the gradient
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        
        //sets it to the size of the object the uses this subview
        gradientLayer.frame = self.bounds
        
        //adding this CALayer to the UIView layer
        //Since a UIView can have multiple layers, which layer must be specified: "0" is the top layer
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    

}
