//
//  DeviceBattery.swift
//  Battery
//
//  Created by Luca Vigato on 01/07/21.
//

import Foundation
import UIKit

public extension UIDevice {
    static var batteryInfo: (Int, Int) = {
        
        let device = UIDevice.modelName
        
        // the first number is mAh capacity, the second is number of total hours of offline video watching
        
        switch device {
        case "iPod Touch 7": return (1043, 8)
        case "iPhone 6s": return (1715, 11)
        case "iPhone 6s Plus": return (2750, 14)
        case "iphone 7": return (1960, 13)
        case "iPhone 7 Plus": return (2900, 14)
        case "iPhone SE": return (1624, 13)
        case "iPhone 8": return (1821, 13)
        case "iPhone 8 Plus": return (2675, 14)
        case "iPhone X": return (2716, 13)
        case "iPhone XS": return (2659, 14)
        case "iPhone XS Max": return (3179, 15)
        case "iPhone XR": return (2942, 16)
        case "iPhone 11": return (3110, 17)
        case "iPhone 11 Pro": return (3046, 18)
        case "iPhone 11 Pro Max": return (3969, 20)
        case "iPhone SE 2° Gen": return (1821, 13)
        case "iPhone 12 Mini": return (2227, 15)
        case "iPhone 12": return (2815, 17)
        case "iPhone 12 Pro": return (2815, 17)
        case "iPhone 12 Pro Max": return (3687, 20)
        case "iPad Air": return (8820, 10)
        case "iPad Air 2": return (7340, 10)
        case "iPad 5": return (8827, 10)
        case "iPad 6": return (7306, 10)
        case "iPad Mini 2": return (6470, 10)
        case "iPad Mini 3": return (6470, 10)
        case "iPad Mini 4": return (5124, 10)
        case "iPad Pro (9.7-inch)": return (7306, 10)
        case "iPad Pro (12.9-inch)": return (9237, 10)
        case "iPad Pro (12.9-inch) (2nd gen)": return (10875, 10)
        case "iPad Pro (10.5-inch)": return (8134, 10)
        case "iPad Pro (11-inch)": return (7812, 10)
        case "iPad Pro (12.9-inch) (3rd gen)": return (9720, 10)
        case "iPad Pro (11-inch) (2th gen)": return (7538, 10)
        case "iPad Mini 5": return (5124, 10)
        case "iPad Air 3": return (11000, 10)
//        case "iPad Pro (12.9-inch) (4th gen)": return (9720, 10)
        case "iPad 8": return (8827, 10)
        case "iPad Air 4": return (7606, 10)
        case "iPad Pro (11-inch) (3rd gen)": return (7538, 10)
        case "iPad Pro (12.9-inch) (5th gen)": return (9720, 10)
        default: return (0, 0)
        }
    }()
}
