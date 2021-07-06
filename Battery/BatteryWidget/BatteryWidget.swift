//
//  BatteryWidget.swift
//  BatteryWidget
//
//  Created by Luca Vigato on 04/07/21.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> BatteryEntry {
        BatteryEntry(date: Date(), configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (BatteryEntry) -> ()) {
        let entry = BatteryEntry(date: Date(), configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [BatteryEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = BatteryEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct BatteryEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

struct BatteryWidgetEntryView : View {
    var entry: Provider.Entry

    var body: some View {
        VStack {
            Text(entry.date, style: .time)
            Text("Cia")
            Image(systemName: "book")
        }
    }
}

@main
struct BatteryWidget: Widget {
    let kind: String = "BatteryWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            BatteryWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct BatteryWidget_Previews: PreviewProvider {
    static var previews: some View {
        BatteryWidgetEntryView(entry: BatteryEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemLarge))
    }
}
