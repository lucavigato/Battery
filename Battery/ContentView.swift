//
//  ContentView.swift
//  Battery
//
//  Created by Luca Vigato on 01/07/21.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    var device = UIDevice.modelName
    var mah = UIDevice.mah
    var percentage = BatteryControl().getBatteryPercent()
    
    var body: some View {
        VStack {
            Text("Device: \(device)")
            Text("Total mAh: \(mah)")
            Text("Percentage: \(percentage)")
        }
    }
}

struct BatteryControl {
    public func getBatteryPercent() -> Int {
        UIDevice.current.isBatteryMonitoringEnabled = true
        return Int(UIDevice.current.batteryLevel * 100)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
