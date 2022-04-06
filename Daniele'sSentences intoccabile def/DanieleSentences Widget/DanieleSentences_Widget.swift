//
//  DanieleSentences_Widget.swift
//  DanieleSentences Widget
//
//  Created by Jasmine Aufiero on 03/04/22.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), sentenceDetails: SentenceProvider.random())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
//        let entry = SimpleEntry(date: Date(), sentenceDetails: SentenceProvider.random())
//        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
       
        let currentDate = Date()
        let entry = SimpleEntry(date: currentDate, sentenceDetails: SentenceProvider.random(), shouldHideEmoji: (configuration.emojitoggle as? Bool ?? true))
        let timeline = Timeline(entries: [entry], policy: .after(.now.advanced(by: 3600)))
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    public let sentenceDetails: SentenceDetails
//    var emoji: String = SentenceDetails().emoji as
    var shouldHideEmoji: Bool = true
   
}

struct DanieleSentences_WidgetEntryView : View {
    var entry: Provider.Entry
    
    var body: some View {
        
        if entry.shouldHideEmoji {
            SentenceWidgetView(sentenceDetails: entry.sentenceDetails)

        }
        else {
            ZStack{
                Color(UIColor.systemGreen)
                Text(entry.sentenceDetails.name)
                    .font(.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing])
                    .minimumScaleFactor(0.5)
            }
            
        }
      
}

@main
struct DanieleSentences_Widget: Widget {
    let kind: String = "DanieleSentences_Widget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: "com.daniele", intent: ConfigurationIntent.self, provider: Provider()) { entry in
            DanieleSentences_WidgetEntryView(entry: entry)
        }
        .configurationDisplayName("Hide emoji")
        .description("Here you can choose to hide the emoji.")
        .supportedFamilies([WidgetFamily.systemSmall])
    }
}
}

//struct DanieleSentences_Widget_Previews: PreviewProvider {
//    
//    static var previews: some View {
//        
//        DanieleSentences_WidgetEntryView(entry: SimpleEntry(date: Date(), sentenceDetails: SentenceDetails(
//            emoji: "🍑",
//            name: "Che belle pacche che c'hai, Antoné!",
//            description: "The flirting attempt made by a man who mistook me for Antonella.")))
//            .previewContext(WidgetPreviewContext(family: .systemSmall))
//    }
//}
