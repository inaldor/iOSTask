//
//  UIColor.swift
//  PulseLive-Swift
//
//  Created by Inaldo Ramos Ribeiro on 24/02/2020.
//  Copyright © 2020 Inaldo's Software Development. All rights reserved.
//
// Created for code usability of UIColor

import UIKit

extension UIColor {
    static let mainTextBlue = UIColor.rgb(r: 7, g: 71, b: 89)
    static let highlightColor = UIColor.rgb(r: 50, g: 199, b: 242)
    
    /// Returns an UIColor from the given RGB values
    ///
    /// - Parameters R, G and B: RGB values
    /// - Returns: Returns an UIColor from the given RGB values
    static func rgb(r: CGFloat, g: CGFloat, b: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
