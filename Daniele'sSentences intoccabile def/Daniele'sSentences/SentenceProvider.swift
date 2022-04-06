//
//  SentenceProvider.swift
//  Daniele'sSentences
//
//  Created by Daniele De Nisi on 03/04/22.
//

import Foundation

public struct SentenceProvider {

  /// Creates a list of emoji details that includes an emoji along with its name and description.
  /// - Returns: The list of `SentenceDetails
    ///
  static func allSentences() -> [SentenceDetails] {
    return [
        SentenceDetails(
        emoji: "😅",
        name: "Daniele, where are you?",
        description: "Typical question my friends ask me during the morning or before going out."),
        SentenceDetails(
        emoji: "🤨",
        name: "You have lost it, haven't you?",
        description: "Typical question my friends ask me for everything."),
        SentenceDetails(
        emoji: "😤",
        name: "You're late!",
        description: "Anxious people be like."),
        SentenceDetails(
        emoji: "👸",
        name: "Buongiorno Principessa!",
        description: "The way my team mates usually greet me when I'm in late."),
        SentenceDetails(
        emoji: "🤌🏼",
        name: "What are you wearing?!",
        description: "Typical expression used for judging my outfit."),
        SentenceDetails(
        emoji: "🙄",
        name: "You can't match the colors!",
        description: "Typical expression used for judging my outfit."),
        SentenceDetails(
        emoji: "🙏🏼",
        name: "You look like Jesus Christ...",
        description: "Just because I have long hair and a the beard."),
        SentenceDetails(
        emoji: "💇🏻",
        name: "When the hell you going to get a haircut?",
        description: "People don't like long hair."),
        SentenceDetails(
        emoji: "🪒",
        name: "Shave yourself, look like a tramp.",
        description: "People don't like beard.")
        ]
  }
    
    
    /// Chooses a random `SenteceDetails` item from the list of all emoji and returns it.
    /// - Returns: A random `SentenceDetails` item.
    ///
    static func random() -> SentenceDetails {
      let allSentences = SentenceProvider.allSentences()
      let randomIndex = Int.random(in: 0..<allSentences.count)
      return allSentences[randomIndex]
    }
}
