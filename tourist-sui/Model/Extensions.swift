//
//  Made with ❤ and ☕ 
//

import SwiftUI

extension UIScreen {
   static let screenWidth   = UIScreen.main.bounds.size.width
   static let screenHeight  = UIScreen.main.bounds.size.height
   static let screenSize    = UIScreen.main.bounds.size
}

enum MyDeviceNames: String, CaseIterable {
    case iPhone11 = "iPhone 11"
    case iPhone8 = "iPhone 8"

    static var all: [String] {
        return MyDeviceNames.allCases.map { $0.rawValue }
    }
}

