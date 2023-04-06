//
//  ScreenHelper.swift
//  Test_product
//
//  Created by Guillaume Camanes on 06/04/2023.
//

import SwiftUI

class ScreenHelper {
    static var helper: ScreenHelper = {
        return ScreenHelper()
    }()
    
    static func size() -> (width: Double, height: Double) {
        let bounds = UIScreen.main.bounds
        return (bounds.width, bounds.height)
    }
    
    static func tileSize() -> (width: Double, height: Double) {
        let bounds = UIScreen.main.bounds
        let width = (bounds.width - 2 * 16 - 8) / 2
        return (width, width * 9 / 16)
    }
}
