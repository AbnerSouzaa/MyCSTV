//
//  FontExtension.swift
//  MyCSTV
//
//  Created by Abner Souza on 06/04/22.
//

import Foundation
import UIKit

enum RobotoType: String {
    case medium = "Medium"
    case bold = "Bold"
    case regular = "Regular"
}

extension UIFont {
    static func roboto(type: RobotoType, size: CGFloat) -> UIFont? {
        return UIFont(name: "Roboto-\(type)", size: size)
    }
}
