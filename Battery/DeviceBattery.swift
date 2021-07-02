//
//  DeviceBattery.swift
//  Battery
//
//  Created by Luca Vigato on 01/07/21.
//

import Foundation
import UIKit

public extension UIDevice {
    static var mah: Int = {
        
        let device = UIDevice.modelName
        
        switch device {
        case "iPod Touch 5": return 1030
        case "iPod Touch 6": return 1043
        case "iPhone 4": return 1420
        case "iPhone 4s": return 1420
        case "iPhone 5": return 1440
        case "iPhone 5c": return 1570
        case "iPhone 5s": return 1507
        case "iPhone 6": return 1810
        case "iPhone 6 Plus": return 2915
        case "iPhone 6s": return 1715
        case "iPhone 6s Plus": return 2750
        case "iphone 7": return 1960
        case "iPhone 7 Plus": return 2900
        case "iPhone SE": return 1624
        case "iPhone 8": return 1821
        case "iPhone 8 Plus": return 2675
        case "iPhone X": return 2716
        case "iPhone XS": return 2659
        case "iPhone XS Max": return 3179
        case "iPhone XR": return 2942
        case "iPhone 11": return 3110
        case "iPhone 11 Pro": return 3046
        case "iPhone 11 Pro Max": return 3969
        case "iPhone SE 2° Gen": return 1821
        case "iPhone 12 Mini": return 2227
        case "iPhone 12": return 2815
        case "iPhone 12 Pro": return 2815
        case "iPhone 12 Pro Max": return 3687
        case "iPad 2": return 6930
        case "iPad 3": return 11560
        case "iPad 4": return 11560
        case "iPad Air": return 8820
        case "iPad Air 2": return 7340
        case "iPad 5": return 8827
        case "iPad 6": return 7306
        case "iPad Mini": return 4490
        case "iPad Mini 2": return 6470
        case "iPad Mini 3": return 6470
        case "iPad Mini 4": return 5124
        case "iPad Pro (9.7-inch)": return 7306
        case "iPad Pro (12.9-inch)": return 9237
        case "iPad Pro (12.9-inch) (2nd gen)": return 10875
        case "iPad Pro (10.5-inch)": return 8134
        case "iPad Pro (11-inch)": return 7812
        case "iPad Pro (12.9-inch) (3rd gen)": return 9720
        case "iPad Pro (11-inch) (4th gen)": return 7538
        case "iPad Mini 5": return 5124
        case "iPad Air 3": return 11000
        case "iPad 8": return 8827
        case "iPad Air 4": return 7606
        case "iPad Pro (11-inch) (3rd gen)": return 7538
        case "iPad Pro (12.9-inch) (5th gen)": return 9720
        default: return 0
        }
    }()
}
