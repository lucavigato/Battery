//
//  ContentView.swift
//  Battery
//
//  Created by Luca Vigato on 01/07/21.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var device = UIDevice.modelName
    var mah = UIDevice.batteryInfo.0
    var percentage = BatteryControl().getBatteryPercent()
    var _1percent = UIDevice.batteryInfo.0 / 100
    // total number of video playing * 60 / 100
    // (it should look like 14, 8.7, 12 or something, it depends on the device) 
    var numberX = UIDevice.batteryInfo.1 * 60 / 100
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Device: \(device)")
                    .font(.title2)
                    .padding()
                Text("Total mAh: \(mah)")
                    .font(.title2)
                    .padding()
                Text("Percentage: \(percentage)%")
                    .font(.title2)
                    .padding()
                Text("Hours remaining: \(percentage * numberX / 60)")
                    .font(.title2)
                    .padding()
                Text("1% mAh: \(_1percent)")
                    .font(.title2)
                    .padding()
            }
            .navigationBarTitle("Battery", displayMode: .automatic)
        }
        .colorScheme(colorScheme == .dark ? .dark : .light)
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
