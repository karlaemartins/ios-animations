//
//  UIColor+Hex.swift
//  ios-animations
//
//  Created by Karla E. Martins Fernandes on 02/07/26.
//

import UIKit

extension UIColor {
    convenience init(hex: String) {
        let hex = hex.trimmingCharacters(in: .whitespacesAndNewlines).replacingOccurrences(of: "#", with: "")
        var rgbValue: UInt64 = 0

        Scanner(string: hex).scanHexInt64(&rgbValue)

        let red = CGFloat((rgbValue >> 16) & 0xFF) / 255
        let green = CGFloat((rgbValue >> 8) & 0xFF) / 255
        let blue = CGFloat(rgbValue & 0xFF) / 255

        self.init(red: red, green: green, blue: blue, alpha: 1)
    }
}
