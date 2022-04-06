//
//  SentenceWidgetView.swift
//  Daniele'sSentences
//
//  Created by Daniele De Nisi on 03/04/22.
//

import SwiftUI

struct SentenceWidgetView: View {
    
    let sentenceDetails: SentenceDetails
    
    var body: some View {
        
        ZStack {
              Color(UIColor.systemGreen)
              VStack {
                Text(sentenceDetails.emoji)
                  .font(.system(size: 55))
                Text(sentenceDetails.name)
                  .font(.headline)
                  .multilineTextAlignment(.center)
                  .padding([.leading, .trailing])
                  .foregroundColor(.white)
                  .minimumScaleFactor(0.5)
              }.padding(10)
          
            }
    }
}

struct SentenceWidgetView_Previews: PreviewProvider {
    static var previews: some View {
        SentenceWidgetView(sentenceDetails: SentenceDetails(
            emoji: "😅",
            name: "Daniele, where are you?",
            description: "Typical question my friends ask me during the morining or before going out."))
    }
}
