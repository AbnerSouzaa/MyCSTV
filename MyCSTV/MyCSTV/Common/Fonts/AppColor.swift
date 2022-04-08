//
//  AppColor.swift
//  MyCSTV
//
//  Created by Abner Souza on 08/04/22.
//

import Foundation
import UIKit

enum AppColor: String {
    
    case purple
    case white
    case lightGrey
    case littleGrey
    case lightPink
    case darkGray
    case black
    case red
    case yellow
    case blue
    case green

    var color: UIColor {
        return UIColor(named: self.rawValue) ?? .black
    }
}
