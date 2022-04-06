//
//  ContentView.swift
//  Daniele'sSentences
//
//  Created by Daniele De Nisi on 03/04/22.
//

import SwiftUI

struct ListView: View {
    
    let sentences: [SentenceDetails] = SentenceProvider.allSentences()
    @State private var showingDetail: Bool = false // we need to add a boolean binding to determine when the details should be visible.
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(sentences, content: { sentenceDetails in
                    
                    Button(action: {
                               showingDetail.toggle()
                             }, label: {
                                 SentenceItemView(emoji: sentenceDetails.emoji, name: sentenceDetails.name)
                             })
                             .sheet(isPresented: $showingDetail) {
                               SentencesDetailsView(sentenceDetails: sentenceDetails)
                             }
                    
                        })
                      }
                      .foregroundColor(.black)
                      .listStyle(InsetGroupedListStyle())
                      .navigationBarTitle("Sentences of my life")
          }
    }
}


struct SentenceItemView: View {
  let emoji: String
  let name: String

  var body: some View {
    Text("\(name)" + " " + "\(emoji) ")
      .font(.largeTitle)
      .padding([.top, .bottom])
  }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
