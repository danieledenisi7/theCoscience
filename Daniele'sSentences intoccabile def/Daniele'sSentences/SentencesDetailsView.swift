//
//  SentencesDetailView.swift
//  Daniele'sSentences
//
//  Created by Daniele De Nisi on 03/04/22.
//

import SwiftUI

struct SentencesDetailsView: View {
    
    var sentenceDetails :SentenceDetails
    
    var body: some View {
        
        ZStack {
            
            // Background color
            Color(sentenceDetails.color)
            
            // Emoji data
            VStack {
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("\(sentenceDetails.name)" + " " + "\(sentenceDetails.emoji)")
                            .font(.largeTitle)
                            .bold()
                    }
                    .padding()
                    
                    Text(sentenceDetails.description)
                        .padding([.leading, .trailing, .bottom])
                        .font(.title)
                    
                } // :VStack (internal one)
                .foregroundColor(.white)
                
            }// :VStack (esternal one)
            
        }.ignoresSafeArea()
         
    } // :View
}

struct SentencesDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        SentencesDetailsView(sentenceDetails: SentenceDetails(
            emoji: "😅",
            name: "Daniele, where are you?",
            description: "Typical question my friends ask me during the morining or before going out.",
            color: UIColor.systemBlue))
    }
}
